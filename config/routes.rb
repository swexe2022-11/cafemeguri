Rails.application.routes.draw do
  resources :user
  root 'top#main'
  get 'top/main'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
