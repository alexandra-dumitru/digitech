Rails.application.routes.draw do
  get 'sessions/new'

  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  get '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  post '/order_product', to: 'static_pages#order'

  resources :promocodes
  resources :users
  resources :watches
  resources :macs
  resources :iphones
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
