Rails.application.routes.draw do
  devise_for :users
  root to: 'meals#index'
  resources :meals, except: :index
  resources :users, only: :show
end
