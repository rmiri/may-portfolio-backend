Rails.application.routes.draw do
  get 'auth/create'
  
  resources :users, only: [:create]
  resources :projects
  resources :pages
  resources :about_mes
 
  post '/create', to: 'projects#create'

  resources :pages, only: [:index]
  resources :auth
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  get '/validate', to: 'users#validate'

  get '/aboutme', to: 'about_mes#index'
  # patch '/about_mes/:id', to: 'about_mes#update'
end
