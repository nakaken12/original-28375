class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  before_action :set_post, only: [:edit, :update]
  
  def index
    @posts = Post.includes(:user).order('created_at DESC').page(params[:page]).per(5)
  end

  def new
    @post = PostTitle.new
  end

  def create
    @post = PostTitle.new(post_title_params)
    if @post.valid?
      @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end
  
  def update
    if params[:post][:title_name] != ""
      @title = Title.find_by(title_name: params[:post][:title_name])
      if @title == nil
        @title = Title.create(title_name: params[:post][:title_name])
      end
      @post.title_id = @title.id
      @post.save
    end
    if @post.update(post_params)   
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    post = Post.find(params[:id])
    if post.destroy
      redirect_to root_path
    else
      render :destroy
    end
  end

  private

  def post_title_params
    params.require(:post_title).permit(:title_name, :genre_id, :content, :title_id).merge(user_id: current_user.id)
  end

  def post_params
    params.require(:post).permit(:genre_id, :content).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end
  
end
