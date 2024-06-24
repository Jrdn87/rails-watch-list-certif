Rails.application.routes.draw do
  resources :movies, except: %i[new create]
  resources :lists do
    resources :bookmarks, only: %i[destroy create]
  end
end
