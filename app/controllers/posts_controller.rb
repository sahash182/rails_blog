class PostsController < ApplicationController
  def index
  	@posts = Post.all
  	render :index
  end
  def new
    @post = Post.new
  	render :new
  end
  def create
	# raise params.inspect
	post_params = params.require(:post).permit(:image, :title, :description)
	post = Post.create(post_params)
  # redirect_to "/posts"
  redirect_to "/posts/#{post.id}"

    
  end
  def show
    	post_id = params[:id]
    	@post = Post.find(post_id)
    	render :show
    end
  def edit
  	post_id = params[:id]
    @post = Post.find(post_id)
    render :edit
   	# redirect_to "/posts"
  end
  def update
  	post_id = params[:id]
    db_post = Post.find(post_id)
    # updated plane data from form
    post_params = params.require(:post).permit(:image, :title, :description)

    if db_post.update_attributes(post_params)
    	redirect_to "/posts"
    else
    	render :edit
	end	
  end
  def destroy
  	post_id = params[:id]
    @post = Post.find(post_id)
    @post.destroy
    redirect_to "/posts"

  end


end
