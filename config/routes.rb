Rails.application.routes.draw do
 devise_for :users
  namespace :v1 do

  resources :contacts
  #resource (without the s) makes it a singleten action so no id search. it gives the token currently in use instead of id
  resource :sessions, only: [:create, :destroy]

  end
end
