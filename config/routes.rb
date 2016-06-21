Rails.application.routes.draw do

  use_doorkeeper
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount API::Base => '/api'
  constraints CanAccessAPIDocumentation do
    mount GrapeSwaggerRails::Engine => '/api-doc'
  end

  devise_for :users

  root 'pages#home'
  get 'concept' => 'pages#concept', as: 'concept'
  get 'contact' => 'pages#contact', as: 'contact'
  get 'how-to-join' => 'pages#how_to_join', as: 'how_to_join'
  get 'battery' => 'pages#battery', as: 'battery'
  get 'generation' => 'pages#generation', as: 'generation'
  get 'future' => 'pages#future', as: 'future'
  get 'community' => 'pages#community', as: 'community'
  get 'renting' => 'pages#renting', as: 'renting'
  get 'partnership' => 'pages#partnership', as: 'partnership'
  get 'co-creation' => 'pages#co_creation', as: 'co_creation'
  get 'coreteam' => 'pages#coreteam', as: 'coreteam'
  get 'fairshare' => 'pages#fairshare', as: 'fairshare'
  get 'activity-introduction' => 'pages#activity_introduction', as: 'activity_introduction'
  get 'activity-open' => 'pages#activity_open', as: 'activity_open'
  get 'activity-canal' => 'pages#activity_canal', as: 'activity_canal'
  get 'activity-sessions' => 'pages#activity_sessions', as: 'activity_sessions'
  get 'activity-events' => 'pages#activity_events', as: 'activity_events'

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
