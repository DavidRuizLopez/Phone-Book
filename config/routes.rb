Rails.application.routes.draw do
  resources :contacts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'contacts#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
