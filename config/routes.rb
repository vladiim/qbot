Qbot::Application.routes.draw do
  resources :users
  resources :surveys
  resources :user_sessions

  root to: 'pages#home'
end