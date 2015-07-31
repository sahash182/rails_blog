class PostsController < ApplicationController
  def index
  	@posts = Post.all
  	render :index
  end
  def new
  	render :new
  end
  def create
	# raise params.inspect
	post = params.require(:post).permit(:image, :title, :description)
	Post.create(post)
    redirect_to "/posts"
    end
end
