class ApplicationController < ActionController::Base
  include Response
  def check_admin
    unless current_user.is_admin
      deny_access
    end
  end
  
  def deny_access
    json_response({ 'Access denied': 'You don\'t have access to this resource' }, 403)
    
  end
end
