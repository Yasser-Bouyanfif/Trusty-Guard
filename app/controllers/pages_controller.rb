class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :dashboard ]

  def home
    @missions = Mission.all
    @user = current_user
    
    if current_user
      @estimates = current_user.estimates
    end
    
    @chatrooms = []
    @estimates.each do |estimate|
      @chatrooms << estimate.chatroom
    end
  end
end
