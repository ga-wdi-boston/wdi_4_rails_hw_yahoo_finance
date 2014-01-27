## Yahoo Finance Rails app
The [Yahoo Finance Gem](https://github.com/herval/yahoo-finance) allows to you retrieve current stock prices of tickers with live data. *from the internet*!

1. Create a rails app named yahoo_finance

	_You know the how to create a Rails app?_

	_The DB for this app is postgresql and it has no (default) testing framework_

	_rails --help is your friend_

2. Create a controller for Stocks.
3. Create an index action in the Stocks controller

	
	
4. Create a route for this action.

5. Create a before filter that will return an Array of the [Top Ten Tech Stocks of 2103](http://goo.gl/qygF3l).


    `before_action :top_stocks`  
      ...  
      `def top_stocks`  
         `%w{ GOOG MSFT }`  
      `end`


7. Add the yahoofinance gem to the Gemfile and run bundle install.
	
8. Get info for these top stocks.

    `@stocks = YahooFinance.quotes(top_stocks[:ask, :bid, :last_trade_date])`


7. Create a view, erb file, to show all these stocks. Each stock should have a link to show the individual view of a stock.

8. Create a show action in the stocks controller.
9. Add a route to this show action. The route will take a 'ticker' parameter.

10. Use this ticker parameter to find info from Yahoo Finance about this stock.
	 
11. Create a show view to view this stocks info.


#### Extra credit




