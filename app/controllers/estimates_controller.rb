class EstimatesController < ApplicationController

  def new
    @estimate = Estimate.new
    @mission = Mission.find(params[:mission_id])
  end

  def create
    @mission = Mission.find(params[:mission_id])
    @estimate = Estimate.new(estimate_params)
    @estimate.user = current_user
    @estimate.mission = @mission
    if @estimate.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def estimate_params
    params.require(:estimate).permit(:start_date, :end_date, :number_of_agents, :price, :comment, :mission_id)
  end
end
