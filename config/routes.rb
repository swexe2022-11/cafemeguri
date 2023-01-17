Rails.application.routes.draw do
  root 'top#top'
  get 'top/main'
  get 'top/logout'
  get 'cafes/show'
  get 'get_image/:id', to: 'cafes#get_image'
  get 'maps/index'
  root to: 'maps#index'
  resources :maps, only: [:index]
  post 'top/login'
  resources :users
  resources :cafes, only: [:create, :new, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
