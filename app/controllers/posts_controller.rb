class PostsController < ApplicationController
	# BONUS! Learn how to use a before_action to keep your controller DRY

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)

		@post.save

		redirect_to @post
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])

		@post = Post.update(post_params)

		redirect_to @post
	end

	def destroy
		# assign an instance variable to the post with id from params
		# destroy the post
		# redirect to index
	end

private
	def post_params
		params.require(:post).permit(:bru_name, :title, :body)
	end
end
