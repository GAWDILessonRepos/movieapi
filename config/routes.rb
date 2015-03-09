# DS
# DM
Rails.application.routes.draw do

  root to: redirect('/movies')
  # root 'movies#index'

  resources :movies, except: [:new, :edit, :destroy] do
    resources :reviews, only: [:index, :create]
  end

  namespace :admin do
    resources :movies, only: [] do
      resources :reviews, only: [:update, :destroy]
    end
  end

  resources :users, defaults: {format: :json}, only: [:show, :index, :create] do
    post 'sign_in', on: :collection
  end

end
