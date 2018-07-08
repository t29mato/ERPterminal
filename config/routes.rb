Rails.application.routes.draw do
  get 'vendors/index'

  get 'top' => "home#top"
  get 'about' => "home#about"

end
