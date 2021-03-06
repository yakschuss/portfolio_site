class BlogPostsController < ApplicationController

  def index
    @blog_posts = Ramble::BlogPost.all(sort_by: :written_on, desc: true)
  end

  def show
    @show_page = true

    @blog_post = Ramble::BlogPost.find_by_slug(params[:slug])
  rescue Ramble::BlogPost::NotFound
    redirect_to blog_path
  end

end
