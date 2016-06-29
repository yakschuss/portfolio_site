class Dashboard::ApplicationController < ActionController::Base
  include SessionsHelper

  protect_from_forgery with: :exception

end
