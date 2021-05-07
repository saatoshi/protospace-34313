Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  get 'messages/index'
  
  root to: "prototypes#index"

  resources :prototypes, only: [:create, :new, :index, :show, :edit, :update, :destroy] do 

    resources :comments, only: :create
end

resources :users, only: :show

end
