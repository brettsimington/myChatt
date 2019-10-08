class UserlistController < ApplicationController

  def user
    @users = User.all
    @message.user = current_user 
  end

end