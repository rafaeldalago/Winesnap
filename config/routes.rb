Rails.application.routes.draw do
  devise_for :users

  resources :wineries, :locations
end
