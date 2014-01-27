class StocksController < ApplicationController

	def index
		@stocks = YahooFinance.quotes(["GOOG", "MSFT", "FB", "AMZN", "PCLN", "HPQ", "INTC", "QCOM", "MU", "YHOO"], [:symbol, :close, :open, :last_trade_price])
	end

	def show
		@stock_info =  YahooFinance.quotes([params[:symbol]], [:symbol, :volume, :high_52_weeks, :low_52_weeks, :ebitda, :pe_ratio, :stock_exchange])
	end

end
