class PagesController < ApplicationController
  def home
    @messages = Message.last(10)
    @message = Message.new
  end
end
