class StocksController < ApplicationController
  def index
    @stocks = ["GOOG", "MSFT", "FB", "AMZN", "PCLN", "HPQ", "INTC", "QCOM", "MU", "YHOO"]
    @data = YahooFinance.quotes(@stocks, [:ask, :last_trade_price])
  end

  def show
    @ticker = params[:ticker]
    @details = YahooFinance.quotes([@ticker], [:ask, :average_daily_volume, :ask_size, :bid, :ask_real_time, :bid_real_time, :book_value, :bid_size, :chance_and_percent_change, :change, :comission, :change_real_time,:after_hours_change_real_time, :dividend_per_share, :last_trade_date, :earnings_per_share, :error_indicator, :eps_estimate_current_year, :eps_estimate_next_year, :eps_estimate_next_quarter, :holdings_gain_percent, :annualized_gain, :holdings_gain, :low, :high, :low_52_weeks, :high_52_weeks])

  end
end



