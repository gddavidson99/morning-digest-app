Rails.application.routes.draw do
  root 'digest#index'

  resources :locations do
    member do
      get :geolocator
    end
  end
end
