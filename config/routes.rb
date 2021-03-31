Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    passwords: 'users/passwords'
  }

  devise_scope :user do
    post 'users/sign_up/confirm', to: 'users/registrations#confirm'
    get 'users/sign_up/complete', to: 'users/registrations#complete'
  end

  root to: 'homes#top'

  get '/about' => 'homes#about'

  resources :posts do
    resource :likes, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
    collection do
      get 'search'
      get 'favorite'
    end
  end

  resources :users do
    member do
      get :following, :followers
    end
  end
  
  resources :relationships, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
