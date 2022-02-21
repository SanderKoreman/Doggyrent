Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :dogs, only: [ :index, :show, :new, :create ] do
    resources :bookings, only: [:index, :new, :create, :edit, :update]
  end
end
