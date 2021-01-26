Rails.application.routes.draw do
  resources :categories
  resources :favorites
  resources :items
  resources :users
  patch '/cart', to: 'carts#update', as: "add_to_cart"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
