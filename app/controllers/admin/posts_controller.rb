class Admin::PostsController < ApplicationController
	before_action :authenticate_user!
	before_action :check_admin

	def new
		@post = Post.new
	end

	def create
		#render plain: params[:post].inspect
		@post = Post.new(post_params)

		if(@post.save)
			redirect_to [:admin, @post]
		else
			render 'new'
		end
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])

		if(@post.update(post_params))
			redirect_to [:admin, @post]
		else
			render 'edit'
		end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy

		redirect_to posts_path
	end

	private def post_params
		params.require(:post).permit(:title, :body)
	end

	protected

	def check_admin
		redirect_to posts_path, alert: "У Вас нет доступа" unless 
		current_user.admin?
			
	end

end
