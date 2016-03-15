class Legislator::LegislatorsController < ApplicationController

  def show
    @legislator = Legislator.find(params[:id])
    binding.pry
    info = News.new(@legislator.name)
    @news = info.assortment
  end

end
