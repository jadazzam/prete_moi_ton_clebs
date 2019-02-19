Rails.application.routes.draw do
  devise_for :users
  root to: 'dogs#index'
  resources :dogs, only: [:index, :create, :new, :show]
  resources :users, only: [:index, :edit, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
