Rails.application.routes.draw do
  get 'users/new'
  get 'static_pages/about'
  get 'static_pages/contact'
  get '/admin', to: 'users#admin_login'
  get '/logout', to: 'users#logout'
  resources :doctors
  resources :patients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
