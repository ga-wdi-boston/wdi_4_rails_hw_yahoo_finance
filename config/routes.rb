Wdi4HwRailsYahooFinance::Application.routes.draw do
  get "stocks/" => 'stocks#index', as: 'stocks_index'
  get "stocks/:ticker" => 'stocks#show', as: 'stocks_show'

end
