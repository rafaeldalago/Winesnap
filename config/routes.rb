Rails.application.routes.draw do
  resources :wine_experiences
  resources :wine_vintages
  resources :wines
  resources :wineries
  devise_for :users, controllers: {registrations: 'users/registrations'}
  
  root "home#index"
end
