Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :models, only: [:show, :index]
      resources :reviews
      resources :makes, only: [:show, :index]
    end
  end
end
