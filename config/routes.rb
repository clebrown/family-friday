 Rails.application.routes.draw do
  root to: "employees#index"

  get "/employees", to: "employees#index"
  get "employees/:id", to: "employees#show"
  get "employees/new", to: "employees#new"
  post "/employees", to: "employees#create"


  get "/groups", to: "groups#index"
  end
