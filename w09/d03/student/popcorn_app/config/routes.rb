Rails.application.routes.draw do
  root 'users#index'
  get '/test' => 'users#test'
  resources :users, :movies

  # root 'movies#index'
  # resources

end
