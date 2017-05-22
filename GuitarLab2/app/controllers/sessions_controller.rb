class SessionsController < ApplicationController
  def new
  end

  def create
  user = User.find_by(email: params[:session][:email].downcase)
  if user && user.authenticate(params[:session][:password])
    log_in user
    if params[:session][:code].downcase == "guitar"

    user.update_attribute(:special ,"true")

    end
      redirect_to user

    # redirect_to user
  else
    flash.now[:danger] = "Invalid email and password combination"
    render 'new'
  end
end

def destroy
  log_out
  redirect_to root_url
end
end
