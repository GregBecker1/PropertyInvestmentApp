Rails.application.routes.draw do
  
  resources :investment_properties
  resources :users
  
  root 'static_pages#home'
  
  get 'static_pages/contact'
  
  get 'static_pages/home'

  get 'static_pages/about'

  get 'static_pages/help'

end
