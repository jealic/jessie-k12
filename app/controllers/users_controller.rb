class UsersController < ApplicationController
  def show
    @user = current_user
    if signed_in?
      redirect_to user_lessons_path(current_user)
    else
      redirect_to root_path
    end
  end
end
