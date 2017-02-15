Rails.application.routes.draw do
  
  devise_for :users
  root 'welcome#welcome'
  resources :pics
  resources :users do
    resource :profile
  end
end
