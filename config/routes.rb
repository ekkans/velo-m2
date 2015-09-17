Rails.application.routes.draw do

  use_doorkeeper
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount API::Base => '/api'
  constraints CanAccessAPIDocumentation do
    mount GrapeSwaggerRails::Engine => '/api-doc'
  end

  devise_for :users

  root 'pages#home'

  resources :locales, controller: :translations, only: :show

  # tiny API to get an access_token for the main API
  namespace :api, format: :json do
    namespace :v1 do
      resources :users do
        collection do
          get :me
        end
      end
    end
  end
end
