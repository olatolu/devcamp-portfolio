class PortfoliosController < ApplicationController

  #index
  def index
    @portfolio_items = Portfolio.all
  end

end
