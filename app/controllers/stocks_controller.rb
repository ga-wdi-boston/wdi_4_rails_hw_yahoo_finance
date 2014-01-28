class StocksController < ApplicationController

  def index
     @stocks = YahooFinance.quotes(["GOOG", "MSFT", "FB", "AMZN", "PCLN", "HPQ", "INTC", "QCOM", "MU", "YHOO"], [:symbol, :name, :last_trade_price])
  end

  def show
    ticker = ["GOOG", "MSFT", "FB", "AMZN", "PCLN", "HPQ", "INTC", "QCOM", "MU", "YHOO"]
    @stock = YahooFinance.quotes(params[:ticker].to_sym).stocks
  end

end