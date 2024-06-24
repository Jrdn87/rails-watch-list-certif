Rails.application.routes.draw do
  root 'lists#index'

  resources :movies, except: %i[new create]

  resources :lists do
    resources :bookmarks, only: %i[new create show]
  end

  resources :bookmarks, only: %i[destroy]
end
