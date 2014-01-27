class StocksController < ApplicationController

	def index
		@top_ten = ["GOOG", "MSFT", "FB", "AMZN", "PCLN", "HPQ", "INTC", "QCOM", "MU", "YHOO"]
		@stocks = YahooFinance.quotes(@top_ten)
	end

	def show
		@one_stock = YahooFinance.quotes([params[:ticker].to_s],[:symbol, :last_trade_price, :name, :volume, :one_year_target_price, :low_52_weeks, :high_52_weeks])
	end

end

