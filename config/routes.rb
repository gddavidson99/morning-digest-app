Rails.application.routes.draw do
  root 'digest#index'
  get 'geolocators/create' => 'geolocators#create'
  resources :geolocators
end
