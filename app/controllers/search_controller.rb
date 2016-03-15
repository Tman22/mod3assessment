class SearchController < ApplicationController

  def create
    service = SunlightService.new
    @results = service.locate(params[:search][:zipcode])
    Legislator.create()
    binding.pry
    render :index
  end

end
