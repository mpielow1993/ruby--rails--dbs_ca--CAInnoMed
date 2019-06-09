Rails.application.routes.draw do
  get "about", to: "static_pages#about"
  get "contact", to: "static_pages#contact"

  resources :appointments
  resources :prescriptions
  resources :orders
  devise_for :users
  
  post "/charge", to: "static_pages#charge"

  namespace :admin do
    resources :appointments
    resources :prescriptions
    resources :orders
    resources :users
  end
  
  root :to => 'static_pages#home'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
