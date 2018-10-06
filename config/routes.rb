Rails.application.routes.draw do

  root "users#index"

  resources :users do

    resources :todos

    resources :plans do
      reources :teachingfiles
    end

    resources :materials do
      resources :teachingfiles
    end

    resources :lessons do
      resources :topics do
        resources :aims
      end
    end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
