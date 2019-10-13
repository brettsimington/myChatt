class ChatChannel < ApplicationCable::Channel


  # beggining of methods for showing on/offline
  def subscribed
    stream_from "chat"
    #current_user.appear
    #console.log("Connected to myChat channel.");
  end
 
  def unsubscribed
    current_user.disappear
  end
 
  def appear(data)
    current_user.appear(on: data['appearing_on'])
  end
 
  def away
    current_user.away
  end




end
