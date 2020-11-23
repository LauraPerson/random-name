Rails.application.routes.draw do
  root to: 'pages#home'
    resources :informations, only: [:new, :create]
  end
