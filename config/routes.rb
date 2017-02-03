Rails.application.routes.draw do

  get 'materials/index'

  get 'materials/new'

  get 'materials/create'

  get 'materials/destroy'

  resources :notices
  devise_for :admins

  get 'home/index'
  get 'admin', to: 'admin#index'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
