Rails.application.routes.draw do
  

  devise_for :admins
  devise_for :users
 
  resources :home
  resources :educations
  resources :admins, only:[:index]

   root 'home#index'
  
end
