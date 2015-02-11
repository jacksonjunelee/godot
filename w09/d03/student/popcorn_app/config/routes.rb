Rails.application.routes.draw do
  root 'users#index'
  get '/test' => 'users#test'
  resources :users
end
