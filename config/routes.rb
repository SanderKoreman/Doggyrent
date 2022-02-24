Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/about_us", to: 'pages#about_us'
  resources :users, only: [:edit, :update]

  resources :dogs, only: [ :index, :show, :new, :create, :destroy, :edit, :update] do
    resources :bookings, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :bookings do
    member do
      patch "/accept", to: "bookings#accept"
      patch "/decline", to: "bookings#decline"
      patch "/archive", to: "bookings#archive"
    end
  end

  get '/my-dashboard', to: 'dashboards#my_dashboard'
end
