Rails.application.routes.draw do
  
  root to: 'home#index'
  get 'members', to: 'club#index', as: 'members'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end