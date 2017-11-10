Rails.application.routes.draw do
  root 'admin#index'
  get '/work', to: 'work#index'
  get '/work/facility/:facility_id', to: 'work#facility'  
  get '/work/measure/:template_id', to: 'work#measure'  
  get '/work/facility_items/:facility_item_id', to: 'work#facility_items'    
  get '/work/protocol/:template_id', to: 'work#protocol'
  resources :users
  resources :results
  resources :protocols
  resources :questions
  resources :schedulings 
  resources :facility_items
  resources :templates do
    resources :facility_items
    resources :questions
    resources :schedulings
    get '/addFacilityItems', to: 'facility_items#add'    
    post "/addFacilityItems" => "templates#addFacilityItems"
  end   
  resources :facilities do
    resources :facility_items
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
