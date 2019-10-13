class UserlistController < ApplicationController

  def user
    @users = onlinename.all
    @message.user = current_user 
  end

end