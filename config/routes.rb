# frozen_string_literal: true

Rails.application.routes.draw do
  get '/assessment_requests', to: 'assessment_requests#new'
  post '/assessment_requests', to: 'assessment_requests#create'
  resources :shops, only: [:show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # 【ヘルスチェック用】
  get '/ops/heartbeat', to: 'health_check#index'
end
