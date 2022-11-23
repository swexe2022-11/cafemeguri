Rails.application.routes.draw do
  root 'top#top'
  get 'top/main'
  get 'top/logout'
  post 'top/login'
  resources :users
  resources :caves
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
