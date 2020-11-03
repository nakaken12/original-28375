class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def index
    @posts = Post.includes(:user).order('created_at DESC').page(params[:page]).per(5)
  end

  def new
    @post = PostTitle.new
  end

  def create
    # binding.pry
    @post = PostTitle.new(post_params)
    if @post.valid?
      @post.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  private

  def post_params
    params.require(:post_title).permit(:title_name, :genre_id, :content, :title_id).merge(user_id: current_user.id)
  end

end
