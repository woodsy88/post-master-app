Rails.application.routes.draw do
  resources :events
  devise_for :users
  
  resources :posts do
    resource :like, module: :posts

    member do
      post :bookmark
    end
  end

  resources :users do
    member do
      post :follow
    end
  end

  root to: 'posts#index'
end
