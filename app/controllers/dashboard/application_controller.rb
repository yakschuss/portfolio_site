class Dashboard::ApplicationController < ActionController::Base
  include Dashboard::SessionsHelper

  protect_from_forgery with: :exception

end
