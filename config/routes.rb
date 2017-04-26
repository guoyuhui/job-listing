Rails.application.routes.draw do
  devise_for :users


  root "jobs#index"

  namespace :admin do
    resources :jobs
  end

  resources :jobs
  end
