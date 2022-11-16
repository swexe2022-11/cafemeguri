Rails.application.routes.draw do
<<<<<<< HEAD
  resources :caves
  root 'cafes#new'
  get 'cafes/index'
  get 'cafes/new'
  get 'cafes/create'
  get 'cafes/destroy'
  get 'cafes/edit'
=======
  resources :user
  root 'top#main'
  get 'top/main'
>>>>>>> Y
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
