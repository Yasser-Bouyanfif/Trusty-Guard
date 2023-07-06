class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :dashboard, :market ]

  def user_profile

  end

  def market
    @missions = Mission.all
    @user = current_user

    if current_user
      @estimates = current_user.estimates
    end
  end
end
