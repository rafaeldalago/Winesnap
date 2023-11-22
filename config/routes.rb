Rails.application.routes.draw do
  resources :locations
  devise_for :users
end
