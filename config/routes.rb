Rails.application.routes.draw do

  resources :contacts, only: [:new, :create]

  root :to => 'pages#accueil', :via => [:get, :post]
  match '/todo', :to => 'pages#todo', :via => [:get, :post]
  match '/about', :to => 'pages#about',   :via => [:get, :post]
 # match '/contact', :to => 'contacts#create', :via => :get

end
