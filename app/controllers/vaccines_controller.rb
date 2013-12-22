class VaccinesController < ApplicationController

  def show
    @vaccine = Vaccine.find params[:id]
  end
  
  def new
    @patient = Patient.find_by_tc_no params[:patient_tc_no]
    @vaccine = @patient.vaccines.new
  end
  
  def create
    @patient = Patient.find params[:patient_id]
    @vaccine = @patient.vaccines.new params[:vaccine]
    
    respond_to do |format|
      if @vaccine.save
        format.html { redirect_to(@vaccine, :notice => 'Asi basariyla olusturuldu.') }
        format.xml  { render :xml => @vaccine, :status => :created, :location => @vaccine }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vaccine.errors, :status => :unprocessable_entity }
      end
    end
  end
end
