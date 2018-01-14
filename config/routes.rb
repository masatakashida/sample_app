Rails.application.routes.draw do
  # rootルーティングを追加したことで、root_urlというRailsヘルパー
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'
 
end
