Rails.application.routes.draw do
  get 'customers/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root 'customers#index'
  get '/customers/missing_email', to: 'customers#missing_email', as: 'missing_email_customers'
  get '/customers/alphabetized', to: 'customers#alphabetized', as: 'alphabetized_customers'
  
  resources :customers
  
  # Defines the root path route ("/")
  # root "posts#index"
  ActiveAdmin.routes(self)

end
