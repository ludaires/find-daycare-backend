Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do 
      resources :users do
        resources :my_daycares
      end
        resources :daycares
    end
  end

  post '/api/v1/login', to: "api/v1/sessions#create"
  get '/api/v1/get_current_user', to: "api/v1/sessions#get_current_user"


end
