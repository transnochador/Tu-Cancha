TuCancha::Application.routes.draw do

  resources :events

  resources :ads

  resources :services

  resources :fields

   
  get "sitio/index"

  get "sitio/quienes"

  get "sitio/contactanos"
  
  post "people/login"

  resources :people

  resources :places

  root :to => "sitio#index"
  
  match "/login" => "people#login" , :as => :login

end
