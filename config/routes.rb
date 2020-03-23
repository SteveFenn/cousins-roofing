Rails.application.routes.draw do
  devise_for :admin

  namespace :admin do
    root to: "dashboard#index"
    resources :dashboard, only: [:index]
    resources :pages, except: [:show]
    resources :contacts, only: [:index, :show]
    resources :testimonials, except: [:show]
    resources :feature_slides, except: [:show]
  end

  resources :welcome, only: [:index]
  resources :pages, only: [:show]
  resources :contacts, only: [:new, :create]

  root to: "welcome#index"
end
