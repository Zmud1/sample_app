class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to controller: 'users', action: 'show', id: "#{user.id}"
      flash[:success] = "Hello #{user.name}! Welcome back!"
    else
      flash.now[:danger] = "Error! Invalid email/password combination!"
      render 'new'
    end
  end


  def destroy
    log_out
    redirect_to root_url
  end 
  
end
