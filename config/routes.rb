Rails.application.routes.draw do
  get 'auth/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :styles
  resources :users #, only: [:create]
  post '/login', to: 'autho#create'
  get '/profile', to: 'users#profile'
end
