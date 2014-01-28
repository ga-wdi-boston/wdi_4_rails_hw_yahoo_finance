class StocksController < ApplicationController
  def index
  	@yahoo = YahooFinance.quotes([:GOOG, :MSFT, :FB, :AMZN, :PCLN, :HPQ, :INTC, :QCOM, :MU, :YHOO])
  end

  def show
  	@info = YahooFinance.quotes([params[:sticker]],[:ask, :bid, :last_trade_date, :name])
  end
end
