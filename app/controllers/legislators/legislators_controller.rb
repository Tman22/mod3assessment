class Legislators::LegislatorsController < ApplicationController

  def show
    @legislator = Legislator.find(params[:id])
    # @news = GoogleService.new(@legislator.name)
    # @news = @news.get_news
    info = News.new(@legislator.name)
    @news = info.assortment
    binding.pry
  end

end
