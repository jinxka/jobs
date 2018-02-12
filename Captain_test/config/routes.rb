Rails.application.routes.draw do
  resources :matches
  resources :fighters
  get 'welcome/index'
  root 'welcome#index'
end
