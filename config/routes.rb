Rails.application.routes.draw do
  resources :users, :accounts, :investments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get "/invest/:id", to: "investments#invest"

  get "/saving/:id", to: "savings#saving"

  post "/saving/:id/add_saving", to: "savings#add_saving", as: "add_saving"

end
