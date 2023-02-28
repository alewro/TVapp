Rails.application.routes.draw do
  resources :stories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#index"
  get 'manage', to: 'stories#manage'
  post 'date', to: 'pages#date'
end
