Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'home#home'
  resources :artworks

  get 'addartwork', to: 'home#webform'
  get 'contact', to: 'home#contact'

  post 'request_contact', to: 'home#request_contact'

end
