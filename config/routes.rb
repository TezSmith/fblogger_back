Rails.application.routes.draw do

resources :users

  namespace :api do
   namespace :v1 do

      # resources :students, only: [:index, :show]
      # resources :instructors, only: [:index, :show]
      resources :cohorts, only: [:index, :show]

    end
  end
end
