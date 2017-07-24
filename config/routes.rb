Rails.application.routes.draw do
  resources :events
  resources :cities
  resources :countries
  resources :regions
  resources :groups do 
    get 'add_user/:user_id', to: 'groups#add_user', as: "add"
    get 'remove_user/:user_id', to: 'groups#remove_user', as: "remove"
  end 
  devise_for :users
  get '/admin/group', to: 'admin#group'
  get '/my-feed/', to: "pages#my_feed"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#home"
end
