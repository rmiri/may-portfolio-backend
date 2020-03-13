Rails.application.routes.draw do
  get 'auth/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:create]
  resources :projects
  resources :pages, only: [:index]
  resources :auth
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  get '/validate', to: 'users#validate'
end
