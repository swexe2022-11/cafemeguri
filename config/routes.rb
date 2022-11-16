Rails.application.routes.draw do
  root 'cafes#index'
  get 'cafes/index'
  get 'cafes/new'
  get 'cafes/create'
  get 'cafes/destroy'
  get 'cafes/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
