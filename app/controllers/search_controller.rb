class SearchController < ApplicationController

  def create
    service = SunlightService.new
    sunlight_info = service.locate(params[:search][:zipcode])
    @count = sunlight_info[:count]
    @results = Legislator.submit(sunlight_info[:results])
    binding.pry
    render :index
  end

end
