Rails.application.routes.draw do
  devise_for :users
  root to: 'dogs#home'
  resources :dogs, only: [:index, :create, :new, :show, :destroy] do
    resources :reservations, only: [:create, :destroy]
    collection do
      get 'mine'
    end
  end
  resources :users, only: [:edit, :show, :destroy] do
    resources :reservations, only: [:index, :show, :destroy]
    resources :dogs, only: [:index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
