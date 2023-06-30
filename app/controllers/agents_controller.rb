class AgentsController < ApplicationController

  def index
    if params[:query].present?
      sql_query = "first_name ILIKE :query OR last_name ILIKE :query OR email ILIKE :query"
      @agents = Agent.where(sql_query, query: "%#{params[:query]}%")
    else
      @agents = Agent.all
    end

    respond_to do |format|
      format.html
      format.text { render partial: 'list.html', locals: { agents: @agents } }
    end
  end

  def show
    @agent = Agent.find(params[:id])
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
    if @agent.save
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

  # def search
  #   query = params[:query]
  #   # Effectuez votre logique de recherche ici, en utilisant la valeur de 'query'
  #   # Renvoyez les agents correspondants sous forme de réponse JSON

  #   # Par exemple, vous pouvez récupérer les agents correspondants depuis votre base de données
  #   agents = Agent.where('first_name LIKE ? OR last_name LIKE ?', "%#{query}%", "%#{query}%")

  #   render json: agents
  # end


  private

  def agent_params
    params.require(:agent).permit(:first_name, :last_name, :birth_date, :email, :phone_number, :address, :iban)
  end
end
