Rails.application.routes.draw do
  resources :users
  get 'signup', to: 'users#new'

  resource :session
  get 'signin', to: 'sessions#new'

  root "movies#index"
  resources :movies do
    resources :reviews
  end
end
