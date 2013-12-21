class PrescriptionsController < ApplicationController
  
  def show
    @prescription = Prescription.find params[:id]
  end
  
end
