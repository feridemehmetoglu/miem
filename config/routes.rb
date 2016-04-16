Rails.application.routes.draw do
  

  devise_for :admins
  devise_for :users
 
  resources :home
  resources :educations
  resources :education_records

  resources :admins, only:[:index]

  resources :jobs
  

   root 'home#index'
  
end
