class LessonsController < ApplicationController


  def index
    @lessons = Lesson.all.order("created_at DESC")
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = current_user.lessons.build(lesson_params)
    #current_user.tag(@lesson, :with => @lesson.tag_list.join(', '), :on => :tags)
    if @lesson.save
      flash[:success] = "Lesson created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
    @comments = @lesson.comments.includes(:user).all
    @comment  = @lesson.comments.build(user_id: current_user.id) if current_user
    @user = User.friendly.find_by(id: params[:id])
    impressionist(@user, nil, :unique => [:session_hash])
    @page_views = @user.impressionist_count
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
    params.require(:lesson).permit(:header, :user_id, :title, :price, :simple_description, :detail_description, :tag_list, :tags)
  end

  def user_params
    params.require(:user).permit(:id, :username)
  end


  # private
  # def lesson_params
  #   params.permit(:,:)
  # end
end
