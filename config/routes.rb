Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
=======
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

>>>>>>> master
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :my_products

end
