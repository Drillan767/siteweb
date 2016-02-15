Rails.application.routes.draw do

  resource :contact_form

  root :to => 'pages#accueil', :via => [:get, :post]
  match '/todo', :to => 'pages#todo', :via => [:get, :post]
  match '/contact', to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]
  match '/about', :to => 'pages#about',   :via => [:get, :post]
  get '*unmatched_route', :to => 'application#raise_not_found!'

end
