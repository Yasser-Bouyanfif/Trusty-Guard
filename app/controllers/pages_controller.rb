class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :dashboard ]

  def home
    @missions = Mission.all
    @user = current_user
  end
end
