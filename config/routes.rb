Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests#, only: [:index]
  resources :episodes#, only: [:index]
  resources :users, only: [:index, :new, :create, :show]
  resources :sessions

end
