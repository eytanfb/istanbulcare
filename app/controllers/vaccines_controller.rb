class VaccinesController < ApplicationController

  def show
    @vaccine = Vaccine.find params[:id]
  end

end
