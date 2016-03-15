class SearchController < ApplicationController

  def create
    search = Search.new(params[:search][:zipcode])
    @results = search.legislators
    @count = search.count
    render :index
  end

end
