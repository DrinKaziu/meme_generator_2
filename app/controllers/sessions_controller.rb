class SessionsController < ApplicationController
  def new
    # if logged_in?
    #   redirect_to '/'
    # end
  end

  def create

    user = User.find_by(user_name: params["user_name"])
    if user.authenticate(params["password"])

      session[:user_id] = user.id

      redirect_to '/'
    else
      # render the form again with some error message
      render 'sessions/new'
    end
  end

  def destroy
    session[:user_id] = nil

    redirect_to login_path
  end

end
