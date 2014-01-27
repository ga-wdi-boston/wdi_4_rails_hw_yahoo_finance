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
    @data = YahooFinance.quotes(top_ten, [:name, :last_trade_price])
  end

  def show
  end
end
