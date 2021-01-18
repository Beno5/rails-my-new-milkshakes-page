Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :milkshakes do
    resources :doses, only: [:create, :new]
  end
  resources :doses, only: [:destroy]
end
