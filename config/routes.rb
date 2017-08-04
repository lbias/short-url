Rails.application.routes.draw do
  devise_for :users
  root "welcome#index"

  namespace :api do
    namespace :v1 do
      resources :urls
    end
  end
end
