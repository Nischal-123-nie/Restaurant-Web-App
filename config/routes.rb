Rails.application.routes.draw do
  get 'menu', to: 'menu#index'
  resources :products
  devise_for :users
  resources :reservations
  # get 'home/index', to: 'home#index'
  root 'home#index'
  get 'home/about', to: 'home#about'
  # devise_scope :users do
  #   get '/users/sign_out' => 'devise/sessions#destroy'
  # end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
