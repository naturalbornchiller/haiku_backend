# frozen_string_literal: true

Rails.application.routes.draw do
  resources :favorites
  resources :haiku, except: %i[new edit]
  # RESTful routes
  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
  patch '/change-username' => 'users#changeun'
end
