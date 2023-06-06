# Rails.application.routes.draw do

  #resources :accounts
  #resources :suppliers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"

    # root "articles#index"

    # resources :articles


# end
###comment and article
Rails.application.routes.draw do
  ###comment and article
  root "articles#index"
  resources :userrs
  resources :articles do
    resources :comments
  end
  ###########################user and book
  # root "users#index"
  # resources :users do
  #   resources :books
  # end
end
