class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user=(user)
	  current_user = user
	end

	alias :login_required :authenticate_user!
end
