TuCancha::Application.routes.draw do
   
  get "sitio/index"

  get "sitio/quienes"

  get "sitio/contactanos"

  resources :people

  resources :places

  root :to => "sitio#index"

end
