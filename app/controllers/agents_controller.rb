class AgentsController < ApplicationController

  def index
    @agents = Agent.all
  end

  def new
    @agent = Agent.new
  end

  def create
    @agent = Agent.new(agent_params)
    @agent.user = current_user
    if @agent.save
      redirect_to agents_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @agent = Agent.find(params[:id])
  end

  def update
    @agent = Agent.find(params[:id])
    if @agent.update(agent_params)
      redirect_to agents_path
    else
      render :edit
    end
  end

  def destroy
    @agent = Agent.find(params[:id])
    @agent.destroy
    redirect_to agents_path
  end

  private

  def agent_params
    params.require(:agent).permit(:first_name, :last_name, :birth_date, :email, :phone_number, :address, :iban)
  end
end
