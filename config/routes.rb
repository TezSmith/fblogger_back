Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users, :skip => :all
  root :to => "sessions#new"
  post "/users/sign_in"    => "sessions#create"
  delete "/users/sign_out" => "sessions#destroy"
=======
>>>>>>> 476d8361c76c43e61466c40e06f632ccac3d23f7

  namespace :api do
   namespace :v1 do

      resources :students, only: [:index, :show]
      resources :instructors, only: [:index, :show]
<<<<<<< HEAD
      resources :cohorts, only: [:index, :show]
=======
      resources :cohorts

>>>>>>> 476d8361c76c43e61466c40e06f632ccac3d23f7
    end
  end
end
