Rails.application.routes.draw do
  resources :purchases
  get 'purchase_success', to: 'stripe#purchase_success'

  post 'create_checkout_session', to: 'articles#create_checkout_session'

  resources :articles
  get 'home/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#index"
end
