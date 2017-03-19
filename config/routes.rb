Rails.application.routes.draw do
  resources :orders
  get 'sessions/new'

  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  get '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/order',   to: 'iphones#order_iphone'
  post '/order',   to: 'iphones#order_iphone'
  get '/order-price', to: 'orders#current_price'
  get '/itunes-gift-cards', to: 'static_pages#itunes-gift-cards'
  post '/order_items', to: 'sessions#order_session_data'
  get '/order_items', to: 'sessions#aorder_session_data'
  get '/complete-payment', to: 'static_pages#complete-payment'

  resources :promocodes
  resources :users
  resources :watches
  resources :macs
  resources :iphones
  resources :orders
  
end
