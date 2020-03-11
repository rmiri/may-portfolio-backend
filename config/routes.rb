Rails.application.routes.draw do
  get 'auth/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:create]
  resources :auth
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
end
