class AnimeBlogsController < ApplicationController
  def new
  end

  def create
    @blog = AnimeBlog.new(anime_blog_params)
    @blog.save

    redirect_to @blog
  end

  def index
    @blogs = AnimeBlog.all
  end

  def show
    @blog = AnimeBlog.find(params[:id])
  end

  private
  def anime_blog_params
    params.require(:anime_blog).permit(:anime_name, :desc)
  end
end
