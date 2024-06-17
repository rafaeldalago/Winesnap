Rails.application.routes.draw do
  resources :countries
  devise_for :users
  resources :experiences, :wine_vintages, :wines, :wineries, :locations

  root 'home#index'
end
