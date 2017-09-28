class StaticPagesController < ApplicationController

  def home
    @lessons = Lesson.all
  end



  private
  
  def lesson_params
    params.require(:lesson).permit(:user_id, :title, :price, :simple_description, :detail_description)
  end
end
