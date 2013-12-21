class DoctorsController < ApplicationController
  before_filter :authenticate_doctor!

  def show
    @doctor = Doctor.find params[:id]
  end

end
