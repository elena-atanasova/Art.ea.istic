Rails.application.routes.draw do

  resources :exhibitions
  resources :reviews
  resources :artworks

  root 'home#home'

  get 'addartwork', to: 'home#webform'
  get 'contact', to: 'home#contact'

  post 'request_contact', to: 'home#request_contact'

end
