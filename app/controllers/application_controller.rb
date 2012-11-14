class ApplicationController < ActionController::Base
  protect_from_forgery

  def authenticated?
    session[:_email] # either nil (false) or non-nil (true)
  end
end
