Rails.application.routes.draw do
  get '/', to: 'welcome#home'

  get 'ingredients/:ingredient_name', to: 'ingredient#show'

  get 'recipes', to: 'recipe#index'
  get 'recipe/show'
  get 'recipes/:recipe_name', to: 'recipe#show'

  get '/browse', to: 'browse#index'

  get 'sessions/create'
  get 'sessions/destroy'



  get 'user/show'
  post '/users', to: 'user#create'


  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/signup', to: 'welcome#signup'

end
