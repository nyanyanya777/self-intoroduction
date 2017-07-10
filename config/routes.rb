Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
   resources :editers
   resources :engineers
   resources :others

   root 'tops#index'
end
