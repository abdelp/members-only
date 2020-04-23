class PostsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]
  include PostsHelper

  def index
    @posts = Post.all.order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end
end
