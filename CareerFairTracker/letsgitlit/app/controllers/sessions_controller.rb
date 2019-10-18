class SessionsController < ApplicationController
  skip_before_action :authorize

  def new
    redirect_to index_url
  end

  def create
    user = User.find_by(name: params[:name])
    if user and user.authenticate(params[:password])
      sessions[:user_id] = user.id
      redirect_to admin_url
    else
      redirect_to login_url, alert:"Invalid shit"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, alert:"Successfull shit"
  end
end