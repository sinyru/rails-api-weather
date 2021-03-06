# frozen_string_literal: true
Rails.application.routes.draw do
  resources :apparels, except: [:new, :edit]
  resources :weathers, only: [:show, :index]
  resources :locations, except: [:edit, :new]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
