# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :favorites, only: %i[destroy index]
  resources :haiku, except: %i[new edit]
  # Custom user routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
  patch '/change-username' => 'users#changeun'
end
