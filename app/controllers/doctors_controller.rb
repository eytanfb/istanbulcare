class DoctorsController < ApplicationController
  before_filter :authenticate_doctor!
  before_filter :logout_other_user_if_logged_in
  
  def show
    @doctor = Doctor.find params[:id]
  end
  
  def search_patient
    @patient = Patient.find_by_tc_no params[:patient][:tc_no]
    @prescriptions = @patient.prescriptions
    @visuals = @patient.visuals
  end
  
  private
  
  def logout_other_user_if_logged_in
    sign_out current_patient if current_patient && current_doctor_logged_in?
  end

end
