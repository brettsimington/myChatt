class PagesController < ApplicationController
  def home
    @messages = Message.last(10)
    @message = Message.new
    @users = User.all
  end

end
