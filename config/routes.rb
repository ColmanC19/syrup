Rails.application.routes.draw do
  resources :comments
  resources :questions do
    resources :answers
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/signin' => 'sessions#new'
  get '/signup' => 'users#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  get '/' => 'questions#index'
end
