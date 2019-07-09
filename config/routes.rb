Rails.application.routes.draw do
  
  root to: "auth#new"
  
  resources :chats
  resources :memberships
  resources :clubs, only: [:index, :show]
  resources :professors, only: [:index, :show]
  resources :courses
  resources :students, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get "/login", to: "auth#new", as: "login"
  post "/auth", to: "auth#create"
  delete "/auth", to: "auth#destroy"

end
