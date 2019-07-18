Rails.application.routes.draw do

  devise_for :users
  root "posts#index"

  resources :posts do
    resources :comments
  end

  get '/about', to: 'pages#about'

end