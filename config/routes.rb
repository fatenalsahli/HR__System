Rails.application.routes.draw do
  devise_for :myusers
  get 'home/index'
  resources :targets
  resources :divisions
  resources :teams
  resources :employees
  resources :users
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'home/index'
  root :to => "home#index"
  get 'hoem/index'
  
  end
end 
