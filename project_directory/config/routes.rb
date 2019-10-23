Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create, :index]
    resources :art, only: [:index, :show] do
      resources :comments, only: [:create]
    end
  end

end
