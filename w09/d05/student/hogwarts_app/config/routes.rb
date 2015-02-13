HogwartsApp::Application.routes.draw do

root "welcome#index"

get '/houses' => 'houses#index'
post '/houses/new' => 'houses#create'

get '/students' => 'students#index'
get '/students/:name' => 'students#show'

resources :houses, only: [:index, :show]
resources :students, only: [:index, :show]

end
