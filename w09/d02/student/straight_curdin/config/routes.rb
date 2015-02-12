Rails.application.routes.draw do
  get '/cheeses' => 'cheeses#index'
  resources :cheeses
end
