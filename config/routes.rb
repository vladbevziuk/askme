Rails.application.routes.draw do
  root to: 'questions#index'
  resources :questions
  resources :sessions, only: %i[new create]
  resources :pupils, only: %i[new create]
end
