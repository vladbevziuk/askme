Rails.application.routes.draw do
  root to: 'questions#index'
  resources :questions
  resource :session, only: %i[new create destroy]
  resources :pupils, only: %i[new create]
end
