Rails.application.routes.draw do
  root :to => 'pages#accueil', :via => [:get, :post]
  match '/todo', :to => 'pages#todo', :via => [:get, :post]
  match '/about', :to => 'pages#about',   :via => [:get, :post]

end
