class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :dashboard, :market ]

  def user_profile

  end

  def market
    @missions = Mission.all
    @estimates = current_user.estimates_for_role    
    if current_user
      @estimates = current_user.estimates
    end
    
    @chatrooms = []
    @estimates.each do |estimate|
      @chatrooms << estimate.chatroom
    end
  end
end
