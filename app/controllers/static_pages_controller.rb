class StaticPagesController < ApplicationController

  def home
    @lessons = Lesson.all
    @reports = Lesson.all.order(:title)
  end



  private
  
  def lesson_params
    params.require(:lesson).permit(:user_id, :title, :price, :simple_description, :detail_description)
  end

  def user_params
    params.require(:user).permit(:user_id, :username)
  end
end
