class PagesController < ApplicationController
  #before_action :authenticate_user! <-- this fucked up the way it looked when you hit site... wtf... 
  def home
    @messages = Message.last(10)
    @message = Message.new
    @users = User.all
  end

  def index

  end

end
