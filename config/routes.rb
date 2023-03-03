Rails.application.routes.draw do
  resources :stories

  root "pages#index"
  get 'manage', to: 'stories#manage'
  post '/', to: 'pages#date'
  post 'stories/:id', to: 'pages#counting'
  get 'end', to: 'pages#end'
end
