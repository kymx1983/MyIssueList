Rails.application.routes.draw do

  get "/login" => "user#login"
  get "/" => "issue#index"

  get "issue/index" => "issue#index"
  get "issue/show/:id" => "issue#show"
  get "issue/edit/:id" => "issue#edit"
  post "issue/update/" => "issue#update"
  get "issue/destroy/:id" => "issue#destroy"
  get "issue/new" => "issue#new"
  post "issue/create" => "issue#create"



end
