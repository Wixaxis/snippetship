Rails.application.routes.draw do
  namespace :admin do
      resources :commands

      root to: "commands#index"
    end
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
