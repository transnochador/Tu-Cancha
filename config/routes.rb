TuCancha::Application.routes.draw do

  resources :searches

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
  match "/index" => "sitio#index" , :as => :index
  match "/register" => "people#new" , :as => :register
  match "/logout" => "people#logout" , :as => :logout
  match "/newplace" => "places#new" , :as => :newplace
  match "/myplaces" => "places#myplaces" , :as => :myplaces
  match "/myfields" => "fields#myfields" , :as => :myfields
  match "/myservices" => "services#myservices" , :as => :myservices
  match "/myrentals" => "sitio#index" , :as => :myrentals

end
