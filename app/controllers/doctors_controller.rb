class DoctorsController < ApplicationController
  before_filter :authenticate_doctor!

  def show
    @doctor = Doctor.find params[:id]
  end
  
  def search_patient
    @patient = Patient.find_by_tc_no params[:patient][:tc_no]
    @prescriptions = @patient.prescriptions
    @visuals = @patient.visuals
  end
  
  private
  
  def after_sign_in_path_for(resource)
    doctor_path(resource)
  end

end
