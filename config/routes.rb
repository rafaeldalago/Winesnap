Rails.application.routes.draw do
  resources :wines
  devise_for :users

  resources :wineries, :locations
end
