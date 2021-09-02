Rails.application.routes.draw do
  resources :bookstatuses
  resources :books
  resources :studentsregistereds
  resources :registeredstudents
  resources :students
  #get 'home/index'
  root 'home#index'
  get 'home/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
