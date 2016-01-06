Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'

  devise_for :users
  resources :articles
  resources :works
end
