class AgentsController < ApplicationController
  before_action :set_agent, only: %i[ show edit update destroy ]

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
      redirect_to agent_path(@agent), notice: 'Agent was successfully created.'
    else
      render :new, status: :unprocessable_entity
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

  def search
    @results = Agent.search_by_name(params[:query])
    if @results.empty?
      flash[:alert] = "No results found"
      redirect_to agents_path
    else
      @agents = @results
      render :index
    end
  end

  private

  def agent_params
    params.require(:agent).permit(:first_name, :last_name, :birth_date, :email, :phone_number, :address, :iban, :status)
  end

  def set_agent
    @agent = Agent.find(params[:id])
  end
end
