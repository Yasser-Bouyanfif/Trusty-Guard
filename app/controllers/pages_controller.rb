class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :dashboard, :market ]

  def user_profile
    @missions = current_user.missions
    @estimates = current_user.estimates
    @contracts = current_user.contracts
    @agents = Agent.where(user: current_user)
  end

  def market
    @missions = Mission.where(disabled: 0).order(created_at: :desc)
    @estimates = current_user.estimates_for_role    
    if current_user
      @estimates = current_user.estimates.where(disabled: 0).order(created_at: :desc)
    end

    @chatrooms = []
    @estimates.each do |estimate|
      @chatrooms << estimate.chatroom
    end
  end
end
