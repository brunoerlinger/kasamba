Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks', registrations: 'registrations' }

  root to: 'products#home'
  # For details on the DSL available within  file, see http://guides.rubyonrails.org/routing.html

  resources :products, only: [ :home, :show, :index ]

  namespace :mine do
    resources :products do
      resources :questions
    end
  end

  resources :products do
    resources :questions
  end


  mount Attachinary::Engine => "/attachinary"

end
