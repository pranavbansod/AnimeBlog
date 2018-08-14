class CommentsController < ApplicationController
  def create
    @blog = AnimeBlog.find(params[:anime_blog_id])
    @comment = @blog.comments.create(comment_params)
    redirect_to anime_blog_path(@blog)
  end

  private
  def comment_params
    params.require(:comment).permit(:commented_by, :comment_text)
  end
end
