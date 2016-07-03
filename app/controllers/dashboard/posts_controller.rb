class Dashboard::PostsController < Dashboard::ApplicationController

  before_action :require_sign_in


  def new
    @post = Post.new
  end


  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end

  end

  def destroy
    @post = Post.find(params[:id])

    if @post.destroy
      redirect_to posts_path
    else
      render @post
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end


end

