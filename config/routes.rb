Rails.application.routes.draw do


  namespace :api do

    namespace :v1 do 

      post '/login', to 'auth#create'
      resources :messages, only: [:index,:create]
      resources :users, only: [:index, :create]  
        member do 
          get 'chatrooms'
        end
    end
      resources :chatrooms, only: [:index,:create, :show]

  end  
      # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
mount ActionCable.server => './cable'