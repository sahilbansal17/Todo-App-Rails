# frozen_string_literal: true

Rails.application.routes.draw do
  resources :tasks do
    resources :todo_items
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'tasks#index'
end
