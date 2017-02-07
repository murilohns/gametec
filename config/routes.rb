Rails.application.routes.draw do

  get 'home/show_notice/:id' => 'home#show_notice'
  
  resources :materials, only: [:index, :new, :create, :destroy]
  
  resources :notices
  
  devise_for :admins

  get 'home/index'
  get 'admin', to: 'admin#index'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
