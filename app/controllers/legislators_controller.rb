class LegislatorsController < ApplicationController

  def show
    @legislator = Legislator.find(params[:id])
    info = News.new(@legislator.name)
    @news = info.assortment
  end

end
