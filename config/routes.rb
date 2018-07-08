Rails.application.routes.draw do
  get 'vendors/index'

  get 'top' => "home#top"
  get 'about' => "home#about"

  get "/vendors/index" => "vendors#index"
  # 極力最後にする必要のあるルーティング
  get "/vendors/:id" => "vendors#show"


end
