Rails.application.routes.draw do

  resources :dog_houses do
    resources :reviews do
      resources :comments
    end
  end
  

  resources :reviews, only: [:show, :index, :create]
end