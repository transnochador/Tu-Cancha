TuCancha::Application.routes.draw do

  resources :fields

   
  get "sitio/index"

  get "sitio/quienes"

  get "sitio/contactanos"

  resources :people

  resources :places

  root :to => "sitio#index"

end
