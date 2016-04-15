Rails.application.routes.draw do
  

  get 'admins/index'
  get 'admins/admin_assign'

  devise_for :admins
  devise_for :users
 
  resources :home
  resources :educations

  resources :admins, only:[:index]

  resources :jobs
  

   root 'home#index'
  
end
