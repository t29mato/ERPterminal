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

#----ユーザー情報------------------------
  get 'users/index' => "users#index"


end
