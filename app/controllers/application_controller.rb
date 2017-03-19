class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper
  include EvaluationsHelper
  include ApplicationHelper

  def index
  	render '/index.html.erb'
  end

  
end
