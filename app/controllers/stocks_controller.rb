class StocksController < ApplicationController

	def index
		@stocks = StockQuote::Stock.quote(["GOOG", "MSFT", "FB", "AMZN", "PCLN", "HPQ", "INTC", "QCOM", "MU", "YHOO"])
	end

	def show
		ticker = params[:ticker]
		@stock = StockQuote::Stock.quote(ticker)
	end

	def create
		ticker = params[:ticker]
		@stock = StockQuote::Stock.quote(ticker)
		redirect_to "/stocks/#{ticker}"
	end
end
