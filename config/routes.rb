# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users, only: %I[create show] do
    resources :worries
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
