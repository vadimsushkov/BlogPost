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
    	redirect_to users_index
	end

  private def user_params
	params.require(:user).permit(:email, :name, :phone, :birthday, :avatar)
  end
end
