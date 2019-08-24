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

  post '/api/vi/login', to: "api/vi/sessions#create"
  get '/api/vi/get_current_user', to: "api/vi/sessions#get_current_user"


end
