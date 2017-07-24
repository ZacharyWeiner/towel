Rails.application.routes.draw do
  resources :groups
  devise_for :users
  get '/admin/group', to: 'admin#group'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#home"
end
