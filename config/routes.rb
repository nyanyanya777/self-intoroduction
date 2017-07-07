Rails.application.routes.draw do

   resources :editers
   resources :engineers
   resources :others

   root 'tops#index'
end
