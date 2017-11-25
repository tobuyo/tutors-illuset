class StaticPagesController < ApplicationController

  def home
    @lessons = Lesson.includes(:user).all
    @reports = Report.includes(:user).all
    @tags = ActsAsTaggableOn::Tag.most_used

    @search = Lesson.ransack(params[:q]) # この行を追加
    @searched = @search.result #この行を修正

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @searched }
    end

    #binding.pry
  end



  def tag_cloud
    # order('count DESC')でカウントの多い順にタグを並べています
    @tags = Lesson.tag_counts_on(:tags).order('count DESC')
  end

  private
  
  def lesson_params
    params.require(:lesson).permit(:user_id, :title, :price, :simple_description, :detail_description, :tags, :tagsname, :format)
  end

  def user_params
    params.require(:user).permit(:user_id, :username)
  end
end
