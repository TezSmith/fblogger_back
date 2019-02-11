Rails.application.routes.draw do

  namespace :api do
   namespace :v1 do

      resources :students, only: [:index, :show]
      resources :instructors, only: [:index, :show]
      resources :cohorts

    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
