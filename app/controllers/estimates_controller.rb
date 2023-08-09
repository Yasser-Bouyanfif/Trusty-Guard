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
    @estimate.build_chatroom # Create a chatroom for the estimate
    if @estimate.save
      redirect_to market_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @estimate = Estimate.find(params[:id])
    @mission = Mission.find(params[:mission_id])
    @contract = Contract.new
    @agents = available_agents
  end


  private

  def available_agents
    @estimate.user.agents.left_outer_joins(:availabilities)
                        .where('availabilities.end_date IS NULL OR availabilities.end_date < ?', Date.today)
                        .distinct
  end


  def estimate_params
    params.require(:estimate).permit(:comment, :mission_id)
  end
end
