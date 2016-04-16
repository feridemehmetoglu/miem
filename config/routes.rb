Rails.application.routes.draw do
  


  resources :user_profiles
  resources :education_pre_records

  get 'admins/index'
  get 'admins/user_profiles'

  devise_for :admins
  devise_for :users
 
  resources :home
  resources :educations

  resources :admins, only:[:index]

  resources :jobs
  

   root 'home#index'
  
end
