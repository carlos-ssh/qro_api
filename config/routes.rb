Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :properties
      resources :registrations, only: [:create]
      resources :sessions, only: [:create]

      get :logged_in, to: "sessions#logged_in"
      delete :logout, to: "sessions#logout"

      root to: "home#index"
    end
  end
end
