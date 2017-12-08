Rails.application.routes.draw do
  root "boots#index"

  get '/sessions/list', to: 'sessions#list'

  put '/boots/:boot_id/slogans/:slogan_id/votes', to: 'votes#update'

  resources :boots do
    resources :slogans, only: [:create, :show] do
      resources :votes, only: [:create]
    end
  end

  resources :sessions, only: [:create, :destroy]
end
