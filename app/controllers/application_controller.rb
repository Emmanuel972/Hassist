class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :set_steps, :set_my_steps
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end

  private

  def set_steps
    @steps = Step.publicly_available
  end

  def set_my_steps
    @my_steps = Step.privately_available
  end
end
