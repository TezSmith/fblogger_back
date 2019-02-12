Rails.application.routes.draw do
  devise_for :users, :skip => :all
  root :to => "sessions#new"
  post "/users/sign_in"    => "sessions#create"
  delete "/users/sign_out" => "sessions#destroy"

  namespace :api do
   namespace :v1 do
      resources :students, only: [:index, :show]
      resources :instructors, only: [:index, :show]
      resources :cohorts, only: [:index, :show]
    end
  end
end
