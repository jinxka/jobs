Rails.application.routes.draw do
  get 'welcome/index'

  resources :matches
  resources :fighters
  root 'welcome#index'
end
