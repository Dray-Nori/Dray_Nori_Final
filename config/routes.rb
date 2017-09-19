Rails.application.routes.draw do
 devise_for :users
  namespace :v1, defaults: { format: :json } do

  resources :accounts, only: [:create, :update] do
   resources :contacts

  end
  resource :sessions, only: [:create, :destroy, :show]
  resources :users, only: [:create]

  end
end
