Rails.application.routes.draw do
  
  resources :investment_properties
  resources :users
  
  root 'static_pages#home'
  get 'help' => 'static_pages#help'  
  get 'about' => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'signup' => 'users#new'


end
