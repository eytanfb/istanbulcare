class OperationsController < ApplicationController

  def show
    @operation = Operation.find params[:id]
  end
  
  def new
    @patient = Patient.find_by_tc_no params[:patient_tc_no]
    @operation = @patient.operations.new
  end
  
  def create
    @patient = Patient.find params[:patient_id]
    @operation = @patient.operations.new params[:operation]
    
    respond_to do |format|
      if @operation.save
        format.html { redirect_to(@operation, :notice => 'Operasyon basariyla olusturuldu.') }
        format.xml  { render :xml => @operation, :status => :created, :location => @operation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @operation.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  
end
