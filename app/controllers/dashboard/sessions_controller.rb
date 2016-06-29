class SessionsController < ActionController::Base

  def new
  end

  def create
    admin = Admin.find_by(adminname: params[:session][:email].downcase)

      if admin && admin.authenticate(params[:session][:password])
        create_session admin
        redirect_to root_path
      else
        flash[:error] = 'Invalid Email/Password combination'
        render :new
      end
  end

  def destroy

    destroy_session(current_admin)
    redirect_to root_path

  end


end
