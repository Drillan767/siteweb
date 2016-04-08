Rails.application.routes.draw do

  resources :article

  root :to => 'pages#accueil', :via => [:get, :post]
  match '/todo', :to => 'pages#todo', :via => [:get, :post]
  match '/about', :to => 'pages#about',   :via => [:get, :post]
  get '/contact', to: 'contacts#new' , as: :new_contact
  match '/articles', to: 'article#list', :via => :get
  post '/contact', to: 'contacts#create', as: :contacts

  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)
end
