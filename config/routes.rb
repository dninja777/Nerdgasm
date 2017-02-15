Rails.application.routes.draw do
  
  devise_for :users
  root 'welcome#welcome'
  
  resources :users do
    resource :profile
  end
end
