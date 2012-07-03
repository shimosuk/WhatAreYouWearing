WhatAreYouWearing::Application.routes.draw do
  root to: 'costumes#index'
  resources :costumes, only: [:index, :show, :create, :destroy] do
    collection do
      get :reset
    end
  end
end
