Rails.application.routes.draw do
<
  get 'errors/not_found'

  get 'errors/internal_server_error'


  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations' }

  root to: 'products#home'
  # For details on the DSL available within  file, see http://guides.rubyonrails.org/routing.html

  resources :products, only: [ :show, :index ]

  namespace :mine do
    resources :products
    resources :answers, only: [ :update ]
  end

  resource :orders, only: [:show] do
    member do
      get 'close'
    end
  end

  resources :order_itens, only: [:create, :update, :destroy]

  resources :products do
    resources :questions, only: [ :create, :destroy]
  end


  mount Attachinary::Engine => "/attachinary"

  match "/404", :to => "errors#not_found", :via => :all

  match "/500", :to => "errors#internal_server_error", :via => :all

end
