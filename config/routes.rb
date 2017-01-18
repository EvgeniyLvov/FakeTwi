Rails.application.routes.draw do
  # get '/home', to: 'static_pages#home', as: 'home' # home_path
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'

  resources :users
  resources :microposts # only: [:index, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'static_pages#home'
end
