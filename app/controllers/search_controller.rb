class SearchController < ApplicationController

  def create
    # service = SunlightService.new
    # sunlight_info = service.locate(params[:search][:zipcode])
    # @count = sunlight_info[:count]
    search = Search.new(params[:search][:zipcode])
    @results = search.legislators
    @count = search.count
    binding.pry
    render :index
  end

end
