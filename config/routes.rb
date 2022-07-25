Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get :logged_in, to: "sessions#logged_in"
      resource :sessions, only: [:create]
      resource :registrations, only: [:create]
      delete :logout, to: "sessions#logout" 
     end
  end
  root to: "static#home"
  end
