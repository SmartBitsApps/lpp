class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  
  def index
    if Rails.env.development?
      request = Rack::Request.new(env)
      puts "@@@@@@ Request IP_ADDRESS = #{request.ip}"
    end
  end
  
end
