class StocksController < ApplicationController

	def index
		stock_symbols = ['GOOG', 'MSFT', 'FB', 'AMZN', 'PCLN', 'HPQ', 'INTC', 'QCOM', 'MU', 'YHOO']
		@stocks = YahooFinance.quotes(stock_symbols, [:symbol,
			:last_trade_price])
	end

	def show
		@show_ticker = YahooFinance.quotes([params[:ticker]], [:symbol,:open, :high, :low, :last_trade_price, :high]).first
	end

end
