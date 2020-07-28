Rottenpotatoes::Application.routes.draw do
  resources :movies
  
  get 'movies/:id/similar_movies', to: 'movies#same_director', as: 'similar_movies'
  
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
end
