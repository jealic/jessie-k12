Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "users#show"

  resources :users do

    resources :todos

    resources :plans do
      resources :teachingfiles do
        resources :attachments, only: :destroy
      end
    end

    resources :materials do
      resources :teachingfiles do
        collection do
          resources :attachments, only: :destroy
        end
      end
    end

    resources :lessons do
      resources :topics do
        resources :aims
      end
    end

  end
end
