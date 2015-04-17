class TradesController < ApplicationController
  
  def index
    @trades = Trade.all
  end

  def show
    @trade = Trade.find(params[:id])
  end

  def new
  end

  def create
    @trade = Trade.new(trade_params)

    @trade.save
    redirect_to @trade
  end
  
  private
    def trade_params
      params.require(:trade).permit(:shares, :symbol)
    end

end
