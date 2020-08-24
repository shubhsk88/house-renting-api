Rails.application.routes.draw do
  resources :users,only: [:create]
  post "/login",to: "users#login"
  get "/auto_login",to: "users#auto_login"
  resources :houses 
  resources :favourites
  resources :registrations,only:[:create]
  
end