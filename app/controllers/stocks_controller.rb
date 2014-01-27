class StocksController < ApplicationController
  def index
    @data = YahooFinance.quotes(["GOOG", "MSFT", "FB", "AMZN", "PCLN", "HPQ", "INTC", "QCOM", "MU", "YHOO"], [:ask, :bid, :last_trade_date])
  end

  def show
  end
end
