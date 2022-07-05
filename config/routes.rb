Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :posts

  resources :articles do
  resources :comments
  end
  # is the same as:

  # get '/articles' => 'articles#index',
  #   as: 'articles'

  # get '/articles/new' => 'articles#new',
  #   as: 'new_article'

  # post '/articles' => 'articles#create',
  #   as: 'create_article'

  # get '/articles/:id' => 'articles#show',
  #   as: 'show_article'

  # post 'articles/add_like' => 'articles#add_like'
end
