class PagesController < ApplicationController
  before_action :authenticate_user!
  def home
    @messages = Message.last(10)
    @message = Message.new
    @users = User.all
  end

end
