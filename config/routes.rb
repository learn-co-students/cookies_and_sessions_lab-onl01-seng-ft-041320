Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products, only: [:index, :add]
  match "products/add", to: "products#create", via: :post
  root "products#add"
end
