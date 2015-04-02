class TradesController < ApplicationController
  
  def show
    @trades = Trade.find(params[:id])
  end

  def new
  end

  def create
    @trades = Trade.new(trades_params)

    @trades.save
    redirect_to @trades
  end
  
  private
    def trades_params
      params.require(:trades).permit(:shares, :symbol)
    end

end
