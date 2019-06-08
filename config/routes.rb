Rails.application.routes.draw do
  resources :appointments
  resources :prescriptions
  resources :orders
  devise_for :users
  get 'home/index'
  get 'cart/index'
  get "about", to: "static_pages#about"
  get "contact", to: "static_pages#contact"
  
  resources :doctors
  resources :patients

  root :to => 'static_pages#home'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
