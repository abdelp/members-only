Rails.application.routes.draw do
  resources :posts
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :posts, only: %i[new create index]
  root to: 'posts#index'
end
