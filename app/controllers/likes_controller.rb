class LikesController < ApplicationController  
  before_action :set_lesson, only: [:create, :destroy]

  def create
    @like = current_user.likes.create(lesson_id: params[:lesson_id])
    @lessons = Lesson.all
  end

  def destroy
    like = current_user.likes.find_by(lesson_id: params[:lesson_id])
    like.destroy
    @lessons = Lesson.all
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:lesson_id])
  end
end
