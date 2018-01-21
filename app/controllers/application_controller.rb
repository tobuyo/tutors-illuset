class ApplicationController < ActionController::Base
	before_action :authenticate_user!
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :search

  def index
    @search = Lesson.ransack(params[:q]) # この行を追加
    @searched = @search.result #この行を修正
    
  end

  def user_image
  	@user = User.find(params[:id])
  end

  protected
  def search
    @search = Lesson.ransack(params[:q]) # この行を追加
    @searched = @search.result #この行を修正

  end
  def configure_permitted_parameters
  	added_attrs = [ :username, :email, :password, :password_confirmation, :icon, :image, :simpleintroduce, :introduction ]
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :icon, :image, :simpleintroduce, :introduction])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:username, :icon, :image, :simpleintroduce, :introduction])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :icon, :image, :simpleintroduce, :introduction])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:username, :icon, :image, :simpleintroduce, :introduction])
  end
end
