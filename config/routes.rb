Rails.application.routes.draw do
  root 'geolocators#index'
  get 'geolocators/create' => 'geolocators#create'
  get 'geolocators/home' => 'geolocators#home'
  resources :geolocators
end
