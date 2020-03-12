Rails.application.routes.draw do
  resources :contacts, only: [:new, :create]

  root to: "contacts#new"
end
