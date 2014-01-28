class StocksController < ApplicationController
  def index
    top_ten_stocks = ['GOOG', 'MSFT', 'FB', 'AMZN', 'PCLN', 'HPQ', 'INTC', 'QCOM', 'MU', 'YHOO']
    @stocks_summary = YahooFinance.quotes(top_ten_stocks, [:symbol, :last_trade_price, :low_52_weeks, :high_52_weeks])
  end

  def show
    ticker = params[:ticker]
    @stock_detail = YahooFinance.quotes([ticker], [:symbol, :last_trade_price, :low_52_weeks, :high_52_weeks, :volume, :market_capitalization, :ebitda])
  end
end
