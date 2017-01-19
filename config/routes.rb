Rails.application.routes.draw do
  devise_for :users

  resources :jobs do
    resources :resumes
  end
root 'jobs#index'

namespace :admin do
  resources :jobs do
    resources :resumes
  end
end

end
