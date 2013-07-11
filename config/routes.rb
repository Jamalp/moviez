Moviez::Application.routes.draw do
  root :to => 'welcome#index'
  get '/movies/search' => 'movies#search'
  resources :movies

end
