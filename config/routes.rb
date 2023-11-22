Rails.application.routes.draw do
  resources :wine_vintages
  resources :wines
  devise_for :users

  resources :wineries, :locations
end
