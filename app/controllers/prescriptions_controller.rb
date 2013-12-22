class PrescriptionsController < ApplicationController
  
  def show
    @prescription = Prescription.find params[:id]
  end
  
  def new
    @prescription = current_doctor.prescriptions.new
    @prescription.drugs.build
    @patient = Patient.find_by_tc_no params[:patient_tc_no]
  end
  
  def create
    @prescription = current_doctor.prescriptions.new params[:prescription]
    
    respond_to do |format|
      if @prescription.save
        format.html { redirect_to(@prescription, :notice => 'Recete basariyla olusturuldu.') }
        format.xml  { render :xml => @prescription, :status => :created, :location => @prescription }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @prescription.errors, :status => :unprocessable_entity }
      end
    end
  end
  
end
