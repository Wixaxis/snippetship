# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    resources :commands
    resources :tools
    resources :projects
    resources :users

    root to: 'commands#index'
  end

  resources :projects do
    collection do
      post :subscribe
    end
  end
  resources :tools

  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
