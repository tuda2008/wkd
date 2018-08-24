Rails.application.routes.draw do
  mount Redactor2Rails::Engine => '/redactor2_rails'
  #web
  root to: "home#index"

  get 'home' => 'home#index'
  get 'about' => 'home#about', as: :about
  get 'contact' => 'home#contact', as: :contact
  get 'jobs' => 'home#jobs', as: :jobs
  get 'order' => 'home#order', as: :order
  get 'service' => 'home#service', as: :service

  resources :customizes, only: [:index, :show]
  resources :dynamics, only: [:index, :show]
  resources :news, only: [:index, :show]
  resources :partners, only: [:index]
  resources :products, only: [:index, :show]

  get 'search' => 'search#query', as: :search

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end