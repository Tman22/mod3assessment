class Legislators::LegislatorsController < ApplicationController

  def show
    @legislator = Legislator.find(params[:id])
  end

end