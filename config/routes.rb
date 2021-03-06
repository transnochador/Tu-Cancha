TuCancha::Application.routes.draw do

  resources :comments

  resources :events

  resources :ads

  resources :services

  resources :fields

   
  get "sitio/index"

  get "sitio/quienes"

  get "sitio/contactanos"
  
  post "people/login"
  post "fields/fieldsearch"

  resources :people

  resources :places

  root :to => "sitio#index"
  
  match "/login" => "people#login" , :as => :login
  match "/index" => "sitio#index" , :as => :index
  match "/register" => "people#new" , :as => :register
  match "/fieldsearch" => "fields#fieldsearch", :as => :fieldsearch
  match "/logout" => "people#logout" , :as => :logout
  match "/newplace" => "places#new" , :as => :newplace
  match "/myplaces" => "places#myplaces" , :as => :myplaces
  match "/myfields" => "fields#myfields" , :as => :myfields
  match "/myservices" => "services#myservices" , :as => :myservices
  match "/myrentals" => "sitio#index" , :as => :myrentals
  match "/myevents" => "events#myevents", :as => :myevents


end
