Rails.application.routes.draw do

  get 'doses/new'

  resources :cocktails, only: [:show, :index, :new, :create] do
    resources :doses, only: [:new, :create]
  end

  resources :doses, only: [:destroy]

  root "cocktails#index"
end
