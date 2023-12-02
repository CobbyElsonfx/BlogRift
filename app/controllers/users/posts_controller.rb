# module Users
#   class PostsController < ApplicationController
#     before_action :set_user
#     before_action :set_post, only: [:show]

#     def index
#       @posts = @user.posts
#     end

#     def show
#       @top_comments = @post.top_comments
#     end

#     private

#     def set_user
#       @user = User.find(params[:user_id])
#     end

#     def set_post
#       @post = @user.posts.find(params[:id])
#     end
#   end
# end

class Users::PostsController < ApplicationController
  before_action :set_user
  before_action :set_post, only: [:show]

  def show
    @top_comments = @post.top_comments
    @author = @post.author
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_post
    @post = @user.posts.includes(:author, :comments).find(params[:id])
  end
end
