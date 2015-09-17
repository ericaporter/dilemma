class ApplicationController < ActionController::Base
  before_filter :configure_devise_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!


  def configure_devise_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u| u.permit(:email, :password, :password_confirmation, :name, :image) 
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:name, :email, :password, :password_confirmation, :current_password, :image)
    end
  end

  def after_sign_in_path_for(resource)
    problems_path
  end
end
