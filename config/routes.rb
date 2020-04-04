Rails.application.routes.draw do
  root "issue#index"

  get "/login" => "user#login"
  post "/login" => "user#login_check"
  post "/logout" => "user#logout"

  get "user/index" => "user#index"
  get "user/show/:id" => "user#show"
  get "user/edit/:id" => "user#edit"
  post "user/update/" => "user#update"
  get "user/destroy/:id" => "user#destroy"
  get "user/new" => "user#new"
  post "user/create" => "user#create"


  get "issue/index" => "issue#index"
  get "issue/show/:id" => "issue#show"
  get "issue/edit/:id" => "issue#edit"
  post "issue/update/" => "issue#update"
  get "issue/destroy/:id" => "issue#destroy"
  get "issue/new" => "issue#new"
  post "issue/create" => "issue#create"

end
