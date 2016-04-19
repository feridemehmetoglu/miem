Rails.application.routes.draw do
  


  resources :user_profiles
  resources :education_pre_records

  get 'admins/index'
  get 'admins/user_profiles'
  get '/my_educations', to: 'educations#my_educations'
  
  devise_for :admins
  devise_for :users
 
  resources :home
  resources :educations
  resources :education_records

  resources :admins, only:[:index]

  resources :jobs
  

   root 'home#index'
  
end
