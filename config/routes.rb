Rails.application.routes.draw do
  root 'application#hello'
  get '/home', to: 'static_pages#home'
  get '/contact', to: 'static_pages#contact'

  resources :promocodes
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
