class StocksController < ApplicationController
  def index
  	@quotes = YahooFinance.quotes(["GOOG","MSFT","FB", "AMZN","PCLN","HPQ", "INTC", "QCOM","MU","YHOO"])
  end

  def show
  	@quote_detail = YahooFinance.quotes([params[:symbol]])
  end
end
