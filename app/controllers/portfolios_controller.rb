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

  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end

  def update
    @portfolio_item = Portfolio.find(params[:id])
    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolios_path, notice: "Postfolio ID: #{@portfolio_item.id} was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

end
