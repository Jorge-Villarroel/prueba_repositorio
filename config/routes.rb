Rails.application.routes.draw do
  devise_for :users
  get '/tv_shows', to: 'tv_shows#index'
  get '/welcome', to: 'pages#welcome'
  post '/tv_shows', to: 'tv_shows#create'
 # root 'pages#welcome'
end
