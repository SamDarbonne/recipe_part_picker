Rails.application.routes.draw do
  get 'ingredient/index'

  get 'ingredient/show'

  get 'recipes', to: 'recipe#index'

  get 'recipe/show'

  get 'sessions/create'

  get 'sessions/destroy'


  get 'user/show'

  post '/users', to: 'user#create'

  get '/', to: 'welcome#home'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/signup', to: 'welcome#signup'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
