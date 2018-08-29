class AnimeBlogsController < ApplicationController
  def new
  end

  def edit
    @blog = AnimeBlog.find(params[:id])
  end

  def create
    @blog = AnimeBlog.new(anime_blog_params)
    if @blog.save
      redirect_to @blog
    else
      redirect_to new_anime_blog_path
    end
  end

  def index
    @blogs = AnimeBlog.all
  end

  def show
    @blog = AnimeBlog.find(params[:id])
  end

  def destroy
    @blog = AnimeBlog.find(params[:id])
    @blog.destroy

    redirect_to anime_blogs_path
  end

  def update
    @blog = AnimeBlog.find(params[:id])

    if @blog.update(anime_blog_params)
      redirect_to @blog
    else
      render 'edit'
    end
  end

  private
  def anime_blog_params
    params.require(:anime_blog).permit(:anime_name, :desc)
  end
end
