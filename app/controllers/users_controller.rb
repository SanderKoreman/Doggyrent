class UsersController < ApplicationController
  def edit
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to my_dashboard_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :photo)
  end
end
