Rails.application.routes.draw do
  resources :users
  resources :results
  resources :protocols
  resources :schedulings
  resources :templates do
    get 'facility_items', on: :member
  end
  resources :questions
  root 'admin#index'
  resources :facility_items
  resources :facilities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
