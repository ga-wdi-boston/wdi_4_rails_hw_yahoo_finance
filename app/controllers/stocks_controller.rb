class StocksController < ApplicationController

	def index
		@stocks = YahooFinance.quotes(["GOOG", "MSFT", "FB", "AMZN", "PCLN", "HPQ", "INTC", "QCOM", "MU", "YHOO"], [:symbol, :close, :open, :last_trade_price])
	end

end
