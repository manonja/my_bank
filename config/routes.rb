Rails.application.routes.draw do
  resources :users, :accounts, :savings, :investments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  patch "/login", to: "user#login"
  patch "/create_account", to: "user#create_account"


end
