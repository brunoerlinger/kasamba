Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations' }


  root to: 'products#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :services, only: [ :home, :show, :index ]

  resources :my_products

  mount Attachinary::Engine => "/attachinary"


end
