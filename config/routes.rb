WhatAreYouWearing::Application.routes.draw do
  resources :costumes, only: [:index, :show, :create]
end
