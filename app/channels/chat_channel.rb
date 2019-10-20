class ChatChannel < ApplicationCable::Channel

  def subscribed
    stream_from "chat"
    #current_user.appear
    #user = User.where(params[:user_id]) #I think this is grabbing ALL user id's... not the current user id...
    user = current_user
    user.update(is_online?: '1')
  end
 
  def unsubscribed
    #current_user.disappear
    user = User.where(params[:user_id])
    user.update(is_online?: '0')
  end

end
