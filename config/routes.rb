Rails.application.routes.draw do
  devise_for :users
  
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :properties
      resources :users
      root to: "home#index"
    end
  end
end
