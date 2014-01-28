class StocksController < ApplicationController

	def index
		top_stocks = [
			"GOOG",
			"MSFT",
			"FB",
			"AMZN",
			"PCLN",
			"HPQ",
			"INTC",
			"QCOM",
			"MU",
			"YHOO"]
		@stocks_list = YahooFinance.quotes(top_stocks, [:symbol, :name])
	end

	def show
		ticker = params[:ticker]
		@fields = [
			:symbol,
			:name,
			:last_trade_price,
			:high_52_weeks,
			:low_52_weeks,
			:change_from_50_day_moving_average
			]
		@stock_info = YahooFinance.quotes([ticker], @fields).first
	end

end