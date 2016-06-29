class Dashboard::PostsController < Dashboard::ApplicationController

  before_action :require_sign_in


  def new
    @post = Post.new
  end


  def create
    @post = Post.find(params[:id])

    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end

  end


end

