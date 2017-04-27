 Rails.application.routes.draw do
  root to: "employees#index"

  get "/employees", to: "employees#:id"
  get "employees/new", to: "employes#new"
  post "/employees", to: "employees#create"
  end
