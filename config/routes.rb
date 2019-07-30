Rails.application.routes.draw do
  devise_for :users
  #devise_for :models
  #devise_for :installs
  root 'static_pages#index'
  namespace :instructor do
    resources :courses, only: [:new, :create, :show]
  end
end
