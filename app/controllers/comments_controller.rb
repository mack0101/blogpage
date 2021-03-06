class CommentsController < ApplicationController

  def create
    @post = Post.find params[:post_id]
    @comment = @post.comments.create(comment_params)
    @current_user.comments << @comment
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find params[:post_id]
    @comment = @post.comments.find params[:id]
    return redirect_to posts_path unless @comment.user_id == @current_user.id
    @comment.destroy
    redirect_to post_path(@post)
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
