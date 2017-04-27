Rails.application.routes.draw do
  devise_for :users


  root "jobs#index"

  namespace :admin do
    resources :jobs do
      member do
        post :publish
        post :hide
      end
    end
  end

  resources :jobs
  end
