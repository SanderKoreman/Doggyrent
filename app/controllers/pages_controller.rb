class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @dogs = Dog.all
  end

  def about_us
  end

end
