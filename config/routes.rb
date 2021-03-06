Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  resources :chats

  resources :users do
    resources :chats, only: [:index, :show]
  end

  root 'sessions#new'

  resources :main, only:[:index], :path => 'main'

end
