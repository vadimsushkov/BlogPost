module Admin 
class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = User.find_by_id(params[:id])
  end

  def destroy
		@user = User.find(params[:id])
		@user.destroy
    	flash[:success] = "User deleted"
    	redirect_to user_path
	end

  #def update
	#	@user = User.find_by_id(params[:id])

	#	if(@user.update(user_params))
	#		redirect_to @post
	#	else
	#		render 'edit'
	#	end
	#end

  private def user_params
	params.require(:user).permit(:email, :name, :phone, :birthday)
  end
end
end



