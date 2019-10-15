class ChatChannel < ApplicationCable::Channel

  def subscribed
    stream_from "chat"
    #current_user.appear
    user = User.where(params[:user_id])
    user.update(is_online?: '1')
  end
 
  def unsubscribed
    #current_user.disappear
    user = User.where(params[:user_id])
    user.update(is_online?: '0')
  end

end
