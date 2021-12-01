Rails.application.routes.draw do
  root 'home#home'
  resources :artworks
  root 'artworks#index'

  get 'addartwork', to: 'home#webform'
  get 'contact', to: 'home#contact'

  post 'request_contact', to: 'home#request_contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
