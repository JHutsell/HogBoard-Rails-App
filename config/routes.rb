Rails.application.routes.draw do
  
  resources :syllabuses
  root to: "auth#new"
  
  resources :chats
  resources :memberships
  resources :clubs, only: [:index, :show, ]
  resources :professors, only: [:index, :show]
  resources :courses
  resources :students, only: [:index, :show, :new, :create]

  get "/login", to: "auth#new", as: "login"
  post "/auth", to: "auth#create"
  delete "/auth", to: "auth#destroy"

end
