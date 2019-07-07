Rails.application.routes.draw do
  get "about", to: "static_pages#about"
  get "contact", to: "static_pages#contacts"
  
  post 'messages', to: 'messages#create'

  resources :appointments
  resources :prescriptions
  resources :consultations
  resources :contacts, only: [:new, :create]

  devise_for :users
  
  post "/charge", to: "static_pages#charge"

  get "/doctors", to: "admin/appointments#doctor"

  namespace :admin do
    resources :appointments, only: [:index]
    resources :prescriptions, only: [:index]
    resources :users, only: [:index, :update]
  end
  
  root :to => 'static_pages#home'

  get 'appointments/:id/live', to: 'appointments#live', as: 'live_appointment'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
