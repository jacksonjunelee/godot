Rails.application.routes.draw do
   root 'welcome#show'
  resources :users
  resources :users do
    resources :purchases
  end
   resources :movies
 end
