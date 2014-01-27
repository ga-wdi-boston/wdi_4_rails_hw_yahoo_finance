class StocksController < ApplicationController

	def index
		# @data = YahooFinance.quotes(
		# 				["GOOG", "MSFT", "FB", "AMZN", "PCLN", "HPQ", "INTC", "QCOM", "MU", "YHOO"],
		# 				[:low_52_weeks, :high_52_weeks, :peg_ratio, :last_trade_price, :name]
		# )

	@stocks = StockQuote::Stock.quote(["GOOG", "MSFT", "FB", "AMZN", "PCLN", "HPQ", "INTC", "QCOM", "MU", "YHOO"])
	end

	def show
		ticker = params[:ticker]
		@stock = StockQuote::Stock.quote(ticker)
	end
end
