Rails.application.routes.draw do
  devise_for :users
  #devise_for :models
  #devise_for :installs
  root 'static_pages#index'
  resources :courses, only: [:index, :show]
  namespace :instructor do
    resources :courses, only: [:new, :create, :show] do
      resources :sections, only: [:new, :create]
    end
  end
end
