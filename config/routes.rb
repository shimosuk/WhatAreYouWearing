WhatAreYouWearing::Application.routes.draw do
  resources :costumes, only: [:index, :show, :new, :create]
end
