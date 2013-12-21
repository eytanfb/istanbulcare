class PatientsController < Devise::RegistrationsController
  
  def show
    @patient = Patient.find params[:id]
  end
  
  private
  
  def after_sign_in_path_for(resource)
    current_patient_path
  end
  
end
