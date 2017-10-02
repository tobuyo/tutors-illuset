class UsersController < ApplicationController
	def index
    @users = User.all
  end
 
  def show
    @user = User.find(params[:id])
    @lessons = Lesson.find(params[:user_id])
    binding.pry
  end


  private
  def lesson_params
    params.require(:lesson).permit(:header, :user_id, :title, :price, :simple_description, :detail_description)
  end
end
