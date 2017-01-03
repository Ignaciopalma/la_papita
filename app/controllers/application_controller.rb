class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  private

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    new_end_shift_path(:cashier_name => params[:cashier_name], 
    				   :total_cash => params[:total_cash], 
    				   :total_credit => params[:total_credit],
    				   :total_debit => params[:total_debit], 
    				   :total_agreement => params[:total_agreement])
  end
end
