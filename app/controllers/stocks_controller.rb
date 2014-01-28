class StocksController < ApplicationController
  def index
    top_10 = ['GOOG', 'MSFT', 'FB', 'AMZN', 'PCLN', 'HPQ', 'INTC', 'QCOM', 'MU', 'YHOO']
    data = [:last_trade_price_only]
    @quote = StockQuote::Stock.quote(top_10, data)
  end

  def show
    data = [:last_trade_price_only, :year_low, :year_high, :pe_ratio, :volume,
            :market_capitalization]
    ticker = params[:ticker]
    @quote = StockQuote::Stock.quote(ticker, data)
  end
end
