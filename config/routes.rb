Rails.application.routes.draw do
  devise_for :users
  root to: 'dogs#home'
  resources :dogs, only: [:index, :create, :new, :show] do
    resources :reservations, only: [:create]
  end
  resources :users, only: [:edit, :show,]
  resources :reservations, only: [:index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
