class PortfoliosController < ApplicationController

  #index
  def index
    @portfolio_items = Portfolio.all
  end

  #Portfolion_item New
  def new
    @portfolio_item = Portfolio.new

  end

  # POST /portfolio_item
  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: "Portfolio_item was successfully created." }
      end

    end
  end

end
