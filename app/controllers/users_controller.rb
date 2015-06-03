class UsersController < ApplicationController

  def index
    @users = User.all
  end 

  def show
    @user = User.find(params[:id])
    render layout: "user_profile"
  end

  def user_params
    params.require(:user).permit(:profile_image)
  end

end