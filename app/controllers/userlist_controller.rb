class UserlistController < ApplicationController
  #attr_accessible :is_online?

  def user
    @users = onlinename.all
    @user = User.all
    #@users = is_online?.find(params[:user_id])
    @message.user = current_user 
  end

  def edituser
    @users = current_user
    @users = onlinename.all
  end

  # def is_online?(is_online?)
  #   is_online?.exists?(is_online?: 'true')
  # end

end