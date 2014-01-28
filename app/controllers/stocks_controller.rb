class StocksController < ApplicationController

	  def index
  		@top10tickers = ['GOOG', 'MSFT', 'FB', 'AMZN', 'PCLN', 'HPQ', 'INTC', 'QCOM', 'MU', 'YHOO']
  		@top10prices = YahooFinance.quotes(@top10tickers, [:last_trade_price, :symbol])
  	end

  	def show
  		id = params[:id]
  		 data = YahooFinance.quotes([id], [:symbol, :last_trade_price, :open, :high, :low, :volume, :average_daily_volume, :market_capitalization, :earnings_per_share, :dividend_per_share] )
  		 @stock = data[0]
  	end

end
