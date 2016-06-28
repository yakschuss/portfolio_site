class PostsController < ApplicationController
  layout 'grayscale'

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

end

