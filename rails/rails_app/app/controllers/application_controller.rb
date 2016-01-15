class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
  	#session[:user_id] = nil
  	@current_user = User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def require_signin
  	unless current_user
  		redirect_to signin_url, alert: "Erst einloggen, dann wohlfühlen."
  	end
  end
end
