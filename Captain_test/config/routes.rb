Rails.application.routes.draw do
  resources :weapons
  get 'welcome/index'

  resources :matches
  resources :fighters
  root 'welcome#index'
end
