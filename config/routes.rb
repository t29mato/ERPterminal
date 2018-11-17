Rails.application.routes.draw do

  get 'top' => "home#top"
  get 'about' => "home#about"
  get 'terms' => "home#terms"
  get 'privacy' => "home#privacy"

#----ベンダー情報------------------------
  get 'vendors/index' => "vendors#index"
  # 極力最後にする必要のあるルーティング
  get 'vendors/:id' => "vendors#show"

#----システム情報------------------------
  get 'systems/index' => "systems#index"
  # 極力最後にする必要のあるルーティング
  get 'systems/:id' => "systems#show"

#----口コミ情報------------------------
  get 'reviews/index' => "reviews#index"
  get "reviews/new" => "reviews#new"
  post "reviews/create" => "reviews#create"
  # 極力最後にする必要のあるルーティング
  get 'reviews/:id' => "reviews#show"

#----ユーザー情報------------------------
  get 'users/index' => "users#index"
  get "users/new" => "users#new"
  post "users/create" => "users#create"
  get "users/:id/edit" => "users#edit"
  post "users/:id/update" => "users#update"
  post "users/:id/destroy" => "users#destroy"

#----ログイン制御------------------------
  get "/login" => "users#login_form"
  post "/login" => "users#login"
  post "/logout" => "users#logout"



end
