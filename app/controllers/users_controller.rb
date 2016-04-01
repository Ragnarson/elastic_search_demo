class UsersController < ApplicationController
  def create
    User.create(user_params)
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :country, :city)
  end
end
