class StocksController < ApplicationController
  def index
  	@quotes = YahooFinance.quotes(["GOOG","MSFT","FB", "AMZN","PCLN","HPQ", "INTC", "QCOM","MU","YHOO"])
  end

  def show
  end
end
