class UsersController < ApplicationController

  def show
    @user = current_user
    if signed_in?
      redirect_to user_lessons_path(@user)
    else
      redirect_to root_path
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:avatar,:name,:intro,:email,:job_title,:website)
  end 
end
