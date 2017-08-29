Rails.application.routes.draw do
  # get 'session/new'

  # get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'posts#index', as: 'home'

  get 'about' => 'pages#about'

  resources :posts do
    resources :comments
  end
  resources :users

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
