Rails.application.routes.draw do

  get 'tokens/create'

resources :users
resources :tokens, only: [:create]

  namespace :api do
   namespace :v1 do

      resources :students, only: [:index, :show]
      resources :instructors, only: [:index, :show]
      resources :cohorts, only: [:index, :show]

    end
  end
end
