Rails.application.routes.draw do
  resources :question_comments
  resources :answer_comments
  resources :questions do
    resources :answers
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
end
