Rails.application.routes.draw do
  root to: 'questions#index'
  resources :users, only: [:new, :create]
  resources :questions
end
