## Yahoo Finance Rails app
The [Yahoo Finance Gem](https://github.com/herval/yahoo-finance) allows to you retrieve current stock prices of tickers with live data. *from the internet*!

1. Create a rails app named yahoo_finance

	_You know the how to create a Rails app?_

	_The DB for this app is postgresql and it has no (default) testing framework_

	_rails --help is your friend_

2. Create a controller for Stocks.
3. Create an index action in the Stocks controller

	
	
4. Create a route for this action.

5. Create a [Before Filter](http://guides.rubyonrails.org/action_controller_overview.html#filters) that will return an Array of the [Top Ten Tech Stocks of 2103](http://goo.gl/qygF3l).


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
##### Draw a diagram that explains how a HTTP Request in handled in Rails.

This should show how the request flows from the routes, controller and views.

##### Explain this to someone. _Not your dog_
	
#### Add these gem for development mode *ONLY*. 

<code>
group :development do  
  gem 'pry'  
  gem 'pry-nav'  
  gem 'pry-stack_explorer'  
  # Add model attributes                                                                                                  
  gem 'annotate'  
  gem 'faker'  
  gem 'chronic'  
  # Turn off verbose logging of asset requests                                                                          
  gem 'quiet_assets'  
  # see Railscast for better_error gem                                                                                 
  # http://railscasts.com/episodes/402-better-errors-railspanel                                                         
  # FOR sublime text 3 MUST INSTALL sublime-url-protocol-mac, http://goo.gl/8KX1lb                                      
  # http://goo.gl/8KX1lb                                                                                                 
  gem 'better_errors'  
  gem 'binding_of_caller'  
  gem 'meta_request'  
end
</code>

1. Use binding.pry in the show and index action.
2. Watch [Railscast for Better Errors](http://railscasts.com/episodes/402-better-errors-railspanel)
3. Create an error and explore the error page.




