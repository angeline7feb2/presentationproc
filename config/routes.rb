Rails.application.routes.draw do

  match "presentationvoices/upload" => "presentationvoices#upload", as: :presentationvoices_upload, via: [:get, :post]
  match "presentationvoices/destroy" => "presentationvoices#destroy", as: :presentationvoices_delete, via: [:get, :post]
  get 'presentationvoices/index'

  devise_for :users
  root 'presentationpay#index', as: 'presentationpay_index'
  #get 'presentationpay/index'
  resources :presentationdetails
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
