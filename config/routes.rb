# Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"

    # root "articles#index"

    # resources :articles


# end
###comment
Rails.application.routes.draw do
  root "articles#index"


  resources :articles do
    resources :comments
    
  end
end
