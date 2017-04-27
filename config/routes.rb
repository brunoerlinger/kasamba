Rails.application.routes.draw do
  get 'order_itens/create'

  get 'order_itens/edit'

  get 'order_itens/update'

  get 'order_itens/destroy'

  get 'orders/show'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations' }

  root to: 'products#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :products, only: [ :home, :show, :index ]

  namespace :mine do
    resources :products
  end

  resource :orders, only: [:show]

  resources :order_itens, only: [:create, :update, :destroy]

  mount Attachinary::Engine => "/attachinary"

end
