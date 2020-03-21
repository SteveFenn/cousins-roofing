Rails.application.routes.draw do
  devise_for :admins
  resources :contacts, only: [:new, :create]

  root to: "contacts#new"
end
