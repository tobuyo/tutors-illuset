class ApplicationController < ActionController::Base
	before_action :authenticate_user!
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def user_image
  	@user = User.find(params[:id])
  end

  protected

  def configure_permitted_parameters
  	added_attrs = [ :username, :email, :password, :password_confirmation, :icon, :image, :simpleintroduce, :introduction ]
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :icon, :image, :simpleintroduce, :introduction])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:username, :icon, :image, :simpleintroduce, :introduction])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :icon, :image, :simpleintroduce, :introduction])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:username, :icon, :image, :simpleintroduce, :introduction])
  end
end
