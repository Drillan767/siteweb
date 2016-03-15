Rails.application.routes.draw do
  root :to => 'pages#accueil', :via => [:get, :post]
  match '/todo', :to => 'pages#todo', :via => [:get, :post]
  match '/about', :to => 'pages#about',   :via => [:get, :post]
  get '/contact', to: 'contacts#new' , as: :new_contact
  post '/contact', to: 'contacts#create', as: :contacts
end
