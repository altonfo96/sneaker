Rails.application.routes.draw do
  resources :favorites
  resources :users
  resources :matches
  resources :sneakers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
