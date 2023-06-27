class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:address, :siret, :phone_number, :name, :category])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:address, :siret, :phone_number, :name, :category])
  end
end
