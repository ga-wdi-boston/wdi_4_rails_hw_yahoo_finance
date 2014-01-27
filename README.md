## Yahoo Finance Rails app

The [Yahoo Finance Gem](https://github.com/herval/yahoo-finance) allows to you retrieve current stock prices of tickers with live data. *From the internet!*

1. Fork and clone this repository (I already ran `rails new yahoo_finance -T --database=postgresql` to create it). Run `rake db:create` to set up your database.

2. Create a controller for Stocks.

3. Create an index action in the Stocks controller.

4. Create a route for this action.

5. Create a [Before Filter](http://guides.rubyonrails.org/action_controller_overview.html#filters) that will return an Array of the [Top Ten Tech Stocks of 2103](http://goo.gl/qygF3l).

```
before_action :top_stocks

...

def top_stocks
  %w{ GOOG MSFT }
end
```

6. Add the Yahoo Finance gem to your `Gemfile` and run `bundle install`.

7. Use `YahooFinance.quotes` to get info for these top stocks in your index action.

8. Create a view to show all these stocks. Each stock should have a link to show the individual view of a stock.

9. Create a show action in the stocks controller.

10. Add a route to this show action. The route will take a "ticker" parameter.

11. Use this ticker parameter to find info from Yahoo Finance about that stock.

12. Create a show view to show some detailed info about the individual stock.

### Extra credit

Draw a diagram that explains how a HTTP Request in handled in Rails. This should show how the request flows from the routes, controller, and views.

Explain this to someone (not your dog).

### Add these gems for development mode *ONLY*

```
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
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
end
```

1. Use binding.pry in the show and index action.
2. Watch [Railscast for Better Errors](http://railscasts.com/episodes/402-better-errors-railspanel).
3. Create an error and explore the error page.
