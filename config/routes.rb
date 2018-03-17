Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "orders#new"

  resources :orders
  resources :items
  resources :users

  resources :sessions, only: [:new, :create] do
    delete :destroy, on: :collection
  end

end
