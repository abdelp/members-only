Rails.application.routes.draw do
  resources :posts
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :posts, only: %i[new create index]
  root to: 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
