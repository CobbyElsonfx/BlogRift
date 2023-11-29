class PostsController
  before_action :set_user
  def index
    @posts = @user.posts
  end

  def show
    @post = @user.posts.find(params[id])
  end

  def set_user
    @user = User.find(params[:id])
  end
end
