Rails.application.routes.draw do

  get 'top' => "home#top"
  get 'about' => "home#about"
  get 'terms' => "home#terms"

  get 'vendors/index' => "vendors#index"
  # 極力最後にする必要のあるルーティング
  get 'vendors/:id' => "vendors#show"

  get 'systems/index' => "systems#index"
  # 極力最後にする必要のあるルーティング
  get 'systems/:id' => "systems#show"


end
