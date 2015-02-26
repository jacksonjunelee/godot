Rails.application.routes.draw do

  root "welcome#index"

  get "/quiz/new" => "welcome#new"

end
