class ContractsController < ApplicationController
  def create
    @mission = Mission.find(params[:mission_id])
    @estimate = Estimate.find(params[:estimate_id])
    @agents = params[:agents].each { |agent| agent.to_i }
    @agents.each do |agent_id|
      Contract.create!(agent_id: agent_id, mission: @mission)
      Availability.create!(agent_id: agent_id, start_date: @estimate.start_date, end_date: @estimate.end_date)
    end
    @mission.disabled = 1
    @mission.save!
    @mission.estimates.each do |estimate|
      estimate.disabled = 1
      estimate.save!
    end

    redirect_to root_path
  end
end
