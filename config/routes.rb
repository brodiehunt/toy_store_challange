Rails.application.routes.draw do
  
# routes for toys
  get "/toys", to: "toys#index", as: "toys"
  post "/toys", to: "toys#create"
  get "/toys/new", to: "toys#new", as: "new_toy"
  get "/toys/:id", to: "toys#show", as: "toy"
  get "/toys/:id/edit", to: "toys#edit", as: "edit_toy"
  patch "/toys/:id", to: "toys#update"
  delete "/toys/:id", to: "toys#destroy"

# routes for users
  get "/users", to: "users#index", as: "users"
  post "/users", to: "users#create"
  get "/users/new", to: "users#new", as: "new_user"
  get "/users/:id", to: "users#show", as: "user"
  get "/users/:id/edit", to: "users#edit", as: "edit_user"
  patch "/users/:id", to: "users#update"
  delete "/users/:id", to: "users#destroy"
end
