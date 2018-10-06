class LessonsController < ApplicationController


  private

  def set_user
    @user = User.find_by_id(params[:user_id])
  end

  def set_author
    @user = current_user
  end
    

end
