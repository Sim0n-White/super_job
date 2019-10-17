class UsersController < ApplicationController
  def Index
    @users = User.all
    if user_signed_in?
      redirect_to home_home_page_path
    else
      redirect_to new_user_session_path
    end
  end

  def show
    @user = user.find(params[:id])
  end
  def update
    @user = user.find(params[:id])
    if @user.update_attributes(secure_params)
      redirect_to root_path, notice: 'no problem'
    else
      redirect_to root_path, notice: 'something went wrong'
    end
  end
  private
  def secure_params
    params.require(:user).permit(:role)
  end
end
