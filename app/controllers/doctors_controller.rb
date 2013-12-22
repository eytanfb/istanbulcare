class DoctorsController < ApplicationController
  before_filter :authenticate_doctor!
  before_filter :logout_other_user_if_logged_in
  
  def show
    @doctor = Doctor.find params[:id]
  end
  
  def search_patient
    tc_no = params[:patient].present? && params[:patient][:tc_no].present? ? params[:patient][:tc_no] : params[:tc_no]
    @patient = Patient.find_by_tc_no tc_no
    @prescriptions = @patient.prescriptions.sort
    @visuals = @patient.visuals.sort_by &:date
    @vaccines = @patient.vaccines.sort_by &:date
  end
  
  private
  
  def logout_other_user_if_logged_in
    sign_out current_patient if current_patient && doctor_signed_in?
  end

end
