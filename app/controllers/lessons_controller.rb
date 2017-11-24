class LessonsController < ApplicationController

  def index
    @lessons = Lesson.all.order("created_at DESC")
    @search = Lesson.ransack(params[:q]) # この行を追加
    @searched = @search.result.includes(:user) #この行を修正
    @taglessons = Lesson.tagged_with(params[:format])
    @tag = params[:format]
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
    @lesson = Lesson.includes(:user).find(params[:id])
    @comments = @lesson.comments.includes(:user).all
    @comment  = @lesson.comments.build(user_id: current_user.id) if current_user
    #binding.pry
    @replies = @comment.replies.includes(:user, :comment).all
    
    @reply  = @comment.replies.build(user_id: current_user.id) if current_user
    @user = User.friendly.find_by(params[:id])
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
    @lesson = Lesson.find(params[:id])
    if @lesson.user_id == current_user.id
      @lesson.update(lesson_params)
      redirect_to lesson_path
    end
  end


  def tag_cloud
    # order('count DESC')でカウントの多い順にタグを並べています
    @tags = Lesson.tag_counts_on(:tags).order('count DESC')
    
  end

  private
  
  def lesson_params
    params.require(:lesson).permit(:header, :user_id, :title, :price, :simple_description, :detail_description, :tag_list, :tags, :q, :tagsname, :format, :flag)
  end

  def user_params
    params.require(:user).permit(:id, :username)
  end


end
