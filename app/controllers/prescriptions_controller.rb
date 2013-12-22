class PrescriptionsController < ApplicationController
  
  def show
    @prescription = Prescription.find params[:id]
  end
  
  def new
    @prescription = current_doctor.prescription.new
    @patient_tc_no = params[:patient_tc_no]
  end
  
end
