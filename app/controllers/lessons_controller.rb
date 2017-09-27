class LessonsController < ApplicationController


  def index
    @lessons = Lesson.includes(:user).page(params[:page]).per().order("created_at DESC")
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = current_user.lessons.build(lesson_params)
    if @lesson.save
      flash[:success] = "Lesson created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
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

  private
  
  def lesson_params
    params.require(:lesson).permit(:user_id, :title, :price, :simple_description, :detail_description)
  end



  # private
  # def lesson_params
  #   params.permit(:,:)
  # end
end
