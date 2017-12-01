Rails.application.routes.draw do
  root "boots#index"
  
  resources :boots do 
    resources :slogans, only: [:create, :show] do
      resources :votes, only: [:create]
    end
  end

  resources :sessions, only: [:create, :destroy]
end
