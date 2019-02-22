Rails.application.routes.draw do
  devise_for :users
  root to: 'dogs#home'
  resources :dogs, only: [:index, :create, :new, :show, :destroy] do
    resources :reservations, only: [:create, :destroy, :update]
    collection do
      get 'mine'
    end
  end
  resources :users, only: [:edit, :show, :destroy] do
    resources :reservations, only: [:index, :show, :destroy]
    resources :dogs, only: [:index]
  end
  get 'owner', to: 'reservations#index_owner', as: :index_owner
end
