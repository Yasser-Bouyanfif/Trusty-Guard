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

  def show
    @estimate = Estimate.find(params[:id])
    @mission = Mission.find(params[:mission_id])
    @contract = Contract.new
    @availability = Availability.new
    @entreprise = @estimate.user # CollectionProxy
    e_agents = @entreprise.agents.flat_map { |agent| agent } # To Array
    @agents = Agent.where(id: e_agents.pluck(:id)) # To ActiveRecord
  end

  private

  def estimate_params
    params.require(:estimate).permit(:comment, :mission_id)
  end
end
