class Legislators::LegislatorsController < ApplicationController

  def show
    binding.pry
    @legislator = Legislator.find(params[:id])
    info = News.new(@legislator.name)
    @news = info.assortment
  end

end
