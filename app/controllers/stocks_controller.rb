class StocksController < ApplicationController

	def index
		@stocks = YahooFinance.quotes('GOOG', 'MSFT','FB', 'AMZN', 'PCLN', 'HPQ', 'INTC', 'QCOM', 'MU', 'YHOO')
	end
end