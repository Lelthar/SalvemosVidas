Rails.application.routes.draw do
  
  devise_for :users, controllers: {
  	omniauth_callbacks: "users/omniauth_callbacks"
  }

  post "/custom_sign_up", to: "users/omniauth_callbacks#custom_sign_up"

  root 'main#home'

  # 1 Se envia una petición a facebook
  # 2 Facebook retorna a la aplicación con el callback_url que se le pase
  # 3 Procesar la información de facebook
  # 4 Autenticar nuevo usuario o crearlo.
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
