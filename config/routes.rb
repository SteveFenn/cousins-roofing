Rails.application.routes.draw do
  devise_for :admin

  namespace :admin do
    resources :pages, except: [:show]
    resources :contacts, only: [:index, :show]
    resources :testimonials, except: [:show]
    resources :feature_slides, except: [:show]
  end

  resources :contacts, only: [:new, :create]

  root to: "contacts#new"
end
