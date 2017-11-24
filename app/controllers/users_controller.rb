class UsersController < ApplicationController

	def index
    @users = User.all
  end
 
  def show
    @user = User.friendly.find(params[:id])
    if Lesson.find_by(params[:user_id])
      @lessons = Lesson.where(user_id: :id)
    else
      @message = "レッスンを持っていません"
    end
  end

  # def config
  #   @user = User.find(params[:id])
  # end

  private
  def lesson_params
    params.require(:lesson).permit(:header, :user_id, :title, :price, :simple_description, :detail_description, :userheader)
  end

end
