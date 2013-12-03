Cookies::Application.routes.draw do
  devise_for :users
  root 'cookie_types#index'
  resources :cookie_types
  resources :users
  get 'users/:id/cookies' => 'user_cookies#index'
  post 'users/:id/cookies' => 'user_cookies#create'
end
