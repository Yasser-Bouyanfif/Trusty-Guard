class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :dashboard, :market ]

  def user_profile
    flash[:notice] = "Page en maintenance" if current_user.category=="Security Company"
    @mission = Mission.where(user: current_user).last
    @estimate = Estimate.last
    @contracts = Mission.where(user: current_user).last.contracts if current_user.category=="Customer Company"
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
