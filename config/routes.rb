Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :properties
      resources :users
      root to: "home#index"
    end
  end
end
