class PatientsController < Devise::RegistrationsController
  
  def show
    @patient = Patient.find params[:id]
    @prescriptions = @patient.prescriptions
  end
  
end
