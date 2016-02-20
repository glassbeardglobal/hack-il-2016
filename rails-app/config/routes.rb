Rails.application.routes.draw do
  root 'pages#home'

  devise_for :users
  get '/users/:id', to: 'users#show', as: :user

  get '/groups/:id', to: 'groups#show'

  resources :friendables do
    member do
      put 'friend_request'
      put 'friend_request_accept'
      delete 'friend_request_reject'
    end
  end

  get '/movies/find', to: 'movies#find'
end
