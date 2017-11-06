Rails.application.routes.draw do
  resources :templates
  resources :questions
  root 'admin#index'
  resources :facility_items
  resources :facilities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
