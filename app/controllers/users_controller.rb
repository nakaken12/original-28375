class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @posts = user.posts.page(params[:page]).per(5)
    post = user.posts
    @num = post.length
  end
end
