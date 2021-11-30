Rails.application.routes.draw do
  root 'home#home'
  resources :artworks
  root 'artworks#index'
  get 'webform', to: 'home#webform'
  get 'addartwork', to: 'home#webform'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
