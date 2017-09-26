class LessonsController < ApplicationController



  def index
    @lessons = Lesson.includes(:user).page(params[:page]).per().order("created_at DESC")
  end

  def new
    @lesson = Lesson.new
  end

  def create
    current_user.lessons.create
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy if lesson.user_id == current_user.id
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson.find(params[:id])
    if lesson.user_id == current_user.id
      @lesson.update
    end
  end


  # private
  # def lesson_params
  #   params.permit(:,:)
  # end
end
