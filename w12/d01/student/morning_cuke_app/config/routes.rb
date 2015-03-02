Rails.application.routes.draw do

  root 'welcome#index'

  get '/posts' => 'post#index'
end
