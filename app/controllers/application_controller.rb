class ApplicationController < ActionController::Base
  before_filter :authorize
  protect_from_forgery
 
end
