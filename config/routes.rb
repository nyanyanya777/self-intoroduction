Rails.application.routes.draw do

  devise_for :users
   resources :editers
   resources :engineers
   resources :others

   root 'tops#index'
end
