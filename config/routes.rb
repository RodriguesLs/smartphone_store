# frozen_string_literal: true

# Routing for application
Rails.application.routes.draw do
  resources :sells
  resources :products
  root to: 'products#index'
end
