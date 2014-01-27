class StocksController < ApplicationController
  def index
    @stocks = ["GOOG", "MSFT", "FB", "AMZN", "PCLN", "HPQ", "INTC", "QCOM", "MU", "YHOO"]
    @data = YahooFinance.quotes(@stocks, [:ask, :last_trade_price]).to_a
  end

  def show
  end
end
