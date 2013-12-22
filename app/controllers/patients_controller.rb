class PatientsController < Devise::RegistrationsController
  before_filter :authenticate_patient!
  before_filter :logout_other_user_if_logged_in
    
  def show
    @patient = Patient.find params[:id]
    @prescriptions = @patient.prescriptions
    @visuals = @patient.visuals.sort_by &:date
  end
  
  private
  
  def logout_other_user_if_logged_in
    sign_out current_doctor if current_doctor && patient_signed_in?
  end
  
end
