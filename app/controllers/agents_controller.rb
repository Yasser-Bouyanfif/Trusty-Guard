class AgentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_agent, only: [:show, :edit, :update, :destroy]

  def index
    @agents = Agent.all
  end

  def show
  end

  def new
    @agent = Agent.new
  end

  def edit
  end

  def create
    @agent = Agent.new(agent_params)
    @agent.user = current_user
    if @agent.save
      redirect_to @agent, notice: 'Agent was successfully created.'
    else
      render :new
    end
  end

  def update
    if @agent.update(agent_params)
      redirect_to @agent, notice: 'Agent was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @agent.destroy
    redirect_to agents_url, notice: 'Agent was successfully destroyed.'
  end

  private

  def agent_params
    params.require(:agent).permit(:user_id, :first_name, :last_name, :birth_date, :email, :phone_number, :address, :iban, :status)
  end

  def set_agent
    @agent = Agent.find(params[:id])
  end
end
