class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find params[:id]
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if(@post.save)
      @current_user.posts << @post
      redirect_to @post
    else
      render 'new'
    end
  end

  def edit
    @post = Post.find params[:id]
  end

  def update
    @post = Post.find params[:id]
    if(@post.update(post_params))
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find params[:id]
    return redirect_to posts_path unless @post.user_id == @current_user.id
    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
