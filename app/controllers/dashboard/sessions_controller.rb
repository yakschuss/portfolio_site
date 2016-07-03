class Dashboard::SessionsController < ActionController::Base
  include Dashboard::SessionsHelper
  layout 'dashboard'

  def new
  end

  def create
    admin = Admin.find_by(username: params[:session][:username].downcase)

    if admin && admin.authenticate(params[:session][:password])
      create_session admin
      redirect_to new_dashboard_post_path
    else
      flash[:error] = 'Invalid Username/Password combination'
      render :new
    end
  end

  def destroy

    destroy_session(current_admin)
    redirect_to root_path

  end


end
