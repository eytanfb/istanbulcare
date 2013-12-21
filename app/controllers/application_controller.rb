class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def after_sign_in_path_for(resource)
    case resource
    when Patient then patient_path(resource)
    when Doctor then doctor_path(resource)
    end
  end
end
