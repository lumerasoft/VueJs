Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "users#index"
  
  resources :users do 
    resources :posts
  end
  resources :posts do
    resources :comments
  end
  
end
