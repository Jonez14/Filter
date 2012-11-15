class ApplicationController < ActionController::Base
  protect_from_forgery


protected

  def authenticated?
    if (request.original_fullpath =~ /secret/)  
  
      if session[:user].nil?
        
        session[:request_uri] = request.original_fullpath
        
        redirect_to :controller => 'user', # default
                    :action     => 'login'
      end
    end
  end
end

