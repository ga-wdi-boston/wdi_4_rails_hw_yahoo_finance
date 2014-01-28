require 'pry'

class StocksController < ApplicationController
  def index
    top_ten = [
      'GOOG',
      'MSFT',
      'FB',
      'AMZN',
      'PCLN',
      'HPQ',
      'INTC',
      'QCOM',
      'MU',
      'YHOO'
    ]
    @data = YahooFinance.quotes(top_ten, [:name, :last_trade_price, :symbol])
  end

  def show
    ticker = params[:ticker]
    @details = [
      :name,
      :last_trade_price,
      :bid,
      :ask,
      :volume,
      :stock_exchange,
      :dividend_yield,
      :open,
      :previous_close,
      :ebitda,
      :market_capitalization
    ]
    @stock = YahooFinance.quotes([ticker], @details).first
  end
end
