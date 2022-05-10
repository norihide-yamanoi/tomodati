Rails.application.routes.draw do
  root 'pictures#index'
  resources :pictures do
    collection do
      post :confirm
    end
  end
  resources :sessions
  resources :users
end
