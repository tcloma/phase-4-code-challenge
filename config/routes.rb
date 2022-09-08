Rails.application.routes.draw do
 
  # Vendor routes
  get '/vendors', to: 'vendors#index'
  get '/vendors/:id', to: 'vendors#show'

  # Sweet routes
  get '/sweets', to: 'sweets#index'
  get '/sweets/:id', to: 'sweets#show'

  # Vendor sweet routes
  post '/vendor_sweets', to: 'vendor_sweets#create'
  delete '/vendor_sweets/:id', to: 'vendor_sweets#destroy'
end
