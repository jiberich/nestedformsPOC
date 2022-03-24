Rails.application.routes.draw do
  resources :credentials
    resources :credential_statuses
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "credentials#index"
end
