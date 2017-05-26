Rails.application.routes.draw do
  get 'sessions/new'

  resources :users
  root 'static_pages#index'

  get '/help', to: 'static_pages#help'
  get 'signup', to: 'users#new'
  get 'logout', to: 'users#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
