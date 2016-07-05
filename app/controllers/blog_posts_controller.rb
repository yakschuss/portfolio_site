class BlogPostsController < ApplicationController

  def index
    @blog_posts = Ramble::BlogPost.all
  end

  def show
    @blog_post = Ramble::BlogPost.find_by_slug(params[:slug])
  rescue Ramble::BlogPost::NotFound
    redirect_to blog_path
  end

end
