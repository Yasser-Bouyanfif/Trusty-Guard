class MissionsController < ApplicationController

  def new
    @mission = Mission.new
  end

  def create
    @mission = Mission.new(mission_params)
    @mission.user = current_user
    @mission.save!
    redirect_to market_path
  end

  def show
    @mission = Mission.find(params[:id])
    @marker = { lat: @mission.latitude, lng: @mission.longitude }
  end

  private

  def mission_params
    params.require(:mission).permit(:start_date, :end_date, :number_of_agents, :event_type, :budget, :comment, :address)
  end

end
