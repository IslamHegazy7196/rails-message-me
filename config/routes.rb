Rails.application.routes.draw do
  resources :messages
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'chatroom#index'
  get '/login' => 'auths#new'
  post '/login' => 'auths#create'
end
