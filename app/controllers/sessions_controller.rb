class SessionsController < ApplicationController
  def create
	# raise request.env["omniauth.auth"].to_yaml
	# user = User.from_omniauth(env["omniauth.auth"])
	auth = request.env["omniauth.auth"]
  user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
  session[:user_id] = user.id
	redirect_to root_url, notice: "Signed In!" 
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Signed out!"
  end

  def failure
    redirect_to root_url, alert: "Authentication failed, please try again."
  end
end