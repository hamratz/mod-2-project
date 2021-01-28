Rails.application.routes.draw do
  resources :categories, only: [:index, :show]
  resources :favorites, only: [:new, :create, :destroy]
  resources :items, only: [:show]
  resources :users, only: [:index, :show, :edit, :update, :destroy, :create]
  root 'categories#index'
  patch '/cart/:item_id', to: 'carts#update', as: "add_to_cart"
  get '/cart', to: 'carts#show'
  get '/cart/edit', to: 'carts#edit'
  delete '/cart', to: 'carts#destroy'
  patch '/cart/:item_id/remove_item', to: 'carts#remove_item', as: "remove_item"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
