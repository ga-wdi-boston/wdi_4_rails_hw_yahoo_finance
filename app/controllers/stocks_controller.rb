#require 'yahoo_finance'

class StocksController < ApplicationController
	def index
		@data = YahooFinance.quotes(["GOOG", "MSFT", "FB", "AMZN", "PCLN", "HPQ", "NTC", "QCOM", "MU", "YHOO"], [:ask, :bid, :last_trade_date, :symbol, :name], { raw: false })
	end
	def show
		@data = YahooFinance.quotes([params[:ticker]], [:name, :ask, :bid, :symbol, :last_trade_date, :low, :high, :low_52_weeks, :high_52_weeks, :percent_change_from_52_week_low, :name ])
	end
end
