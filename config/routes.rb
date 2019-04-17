Rails.application.routes.draw do


  get "/saving/:id", to: "savings#saving"

  post "/saving/:id/add_saving", to: "savings#add_saving", as: "add_saving"

  get 'transfers/index'
  get 'transfers/show'
  get 'transfers/new'
  root 'home#index'
  resources :users, :accounts, :savings, :investments, :transfers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #signup routes
  resources :sessions, only: [:new, :create, :destroy]

  get '/signup', to: 'users#new', as: 'signup'
  get "/login_form", to: "sessions#login_form"
  post "/login", to: "sessions#login", as: "login"
  get "/profile", to: "users#profile"

  delete "/logout", to: "sessions#logout", as: 'logout'


end
