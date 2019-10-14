class ChatChannel < ApplicationCable::Channel


  # beggining of methods for showing on/offline
  def subscribed
    stream_from "chat"
    #current_user.appear
    #user = User.find(params[:user_id])
    #user = current_user
    user = User.where(params[:user_id])
    #user.is_online? = '1'
    #user.save
    user.update(is_online?: '1')
  end
 
  def unsubscribed
    #current_user.disappear
    user = User.where(params[:user_id])
    user.update(is_online?: '0')
  end
 
  def appear(data)
    current_user.appear(on: data['appearing_on'])
  end
 
  def away
    current_user.away
  end




end
