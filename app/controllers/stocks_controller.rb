class StocksController < ApplicationController

	def index
		stock_symbols = ['GOOG', 'MSFT', 'FB', 'AMZN', 'PCLN', 'HPQ', 'INTC', 'QCOM', 'MU', 'YHOO']
		@stocks = YahooFinance.quotes(stock_symbols, [:symbol, :open, :high, :low,
			:last_trade_price ])
	end
end
