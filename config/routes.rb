Rails.application.routes.draw do
  resources :wines
  resources :wineries
  devise_for :users, controllers: {registrations: 'users/registrations'}
  
  root "home#index"
end
