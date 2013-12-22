class VisualsController < ApplicationController

  def show
    @visual = Visual.find params[:id]
  end
  
  def new
    @patient = Patient.find_by_tc_no params[:patient_tc_no]
    @visual = @patient.visuals.new
  end
  
  def create
    @patient = Patient.find params[:patient_id]
    @visual = @patient.visuals.new params[:visual]
    
    respond_to do |format|
      if @visual.save
        format.html { redirect_to(@visual, :notice => 'Gorsel basariyla olusturuldu.') }
        format.xml  { render :xml => @visual, :status => :created, :location => @visual }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @visual.errors, :status => :unprocessable_entity }
      end
    end
  end

end
