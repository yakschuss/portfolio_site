class Dashboard::ApplicationController < ActionController::Base
  include Dashboard::SessionsHelper
  layout 'dashboard'

  protect_from_forgery with: :exception


  private

  def require_sign_in
    unless current_user
      redirect_to new_dashboard_session_path
    end
  end

end
