class VisualsController < ApplicationController

  def show
    @visual = Visual.find params[:id]
  end

end
