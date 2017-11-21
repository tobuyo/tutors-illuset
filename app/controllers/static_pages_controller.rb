class StaticPagesController < ApplicationController

  def home
    @lessons = Lesson.includes(:user).all
    @reports = Lesson.includes(:user).all.order(:title)
    @tags = ActsAsTaggableOn::Tag.most_used
    #binding.pry
  end

  def tag_cloud
    # order('count DESC')でカウントの多い順にタグを並べています
    @tags = Lesson.tag_counts_on(:tags).order('count DESC')
  end

  private
  
  def lesson_params
    params.require(:lesson).permit(:user_id, :title, :price, :simple_description, :detail_description, :tags)
  end

  def user_params
    params.require(:user).permit(:user_id, :username)
  end
end
