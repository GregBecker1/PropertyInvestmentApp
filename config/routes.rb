Rails.application.routes.draw do
  
  root               'static_pages#home'
  get '/help' =>     'static_pages#help'  
  get '/about' =>     'static_pages#about'
  get '/contact' =>   'static_pages#contact'
  get '/login' =>     'users#new'
  get '/signup'=>     'users#new'
  resources :investment_properties
  resources :users

end
