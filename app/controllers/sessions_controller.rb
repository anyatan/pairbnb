class SessionsController < ApplicationController
  def create
   #byebug
    user = FacebookUser.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    sign_in user
    redirect_to root_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
