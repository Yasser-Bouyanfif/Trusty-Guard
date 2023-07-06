Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :missions, only: [:new, :create, :show] do
    resources :contracts, only: :create
    resources :estimates, only: [:new, :create, :show]
  end
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  resources :agents
  post '/agents/search', to: 'agents#search'
  
end
