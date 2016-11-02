Rails.application.routes.draw do
  get '/', to: 'welcome#home'

  get 'ingredients/:ingredient_name', to: 'ingredient#show'
  post 'ingredients/:ingredient_name', to: 'ingredient#add_to_cart'

  get 'recipes', to: 'recipe#index'
  get 'recipes/:recipe_name', to: 'recipe#show'
  post 'recipes/:recipe_name', to: 'recipe#add_to_cart'
  get 'recipes/:recipe_name/edit', to: 'recipe#edit'
  get '/browse', to: 'browse#index'

  get '/chefs/:username', to: 'user#show'
  get '/users/:username', to: 'user#show'
  get 'cart/show', to: 'carts#show'

  get 'user/show'
  post '/users', to: 'user#create'
  post 'cart/remove/:ingredient_id', to: 'carts#remove'
  patch 'recipes/:recipe_name', to: 'recipe#update'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/signup', to: 'welcome#signup'
  get '/logout', to: 'sessions#destroy'
end
