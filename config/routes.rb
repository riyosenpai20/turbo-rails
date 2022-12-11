Rails.application.routes.draw do
  resources :articles
  resources :rooms do
    resources :messages
  end
  get 'rooms/index'
  
  post "/hello", to: "pages#hello"
  root "rooms#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
