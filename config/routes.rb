# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pages#home'

  resources :statuses do
  end
end
