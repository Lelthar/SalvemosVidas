Rails.application.routes.draw do
  
  resources :commentaries
  resources :forum_posts
  resources :questions
  resources :paragraphs
  resources :images
  resources :practices
  resources :slides
  resources :lessons
  devise_for :users, controllers: {
  	omniauth_callbacks: "users/omniauth_callbacks",
    registrations: "users/registrations"
  }

  post "/custom_sign_up", to: "users/omniauth_callbacks#custom_sign_up"
  get "/lessons/category/:category(.:format)", to: "lessons#category"
  get "/practices/category/:category(.:format)", to: "practices#category"
  #admnistrators
  get "/data_users", to: "users/administrators#index"
  get "/data_users/new", to: "users/administrators#new"
  post "/data_users/create", to: "users/administrators#create"
  delete "/data_users/:id(.:format)", :to => "users/administrators#destroy"

  #data_lessons
  get "/data_lessons/new" , to: "data_lessons#new"
  get "/data_lessons/:category(.:format)", to: "data_lessons#lessons"
  get "/data_lessons/info/:id(.:format)", to: "data_lessons#show"
  post "/data_lessons" , to: "data_lessons#create"

  root "main#home"

  # 1 Se envia una petición a facebook
  # 2 Facebook retorna a la aplicación con el callback_url que se le pase
  # 3 Procesar la información de facebook
  # 4 Autenticar nuevo usuario o crearlo.
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
