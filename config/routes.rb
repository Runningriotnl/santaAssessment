Rails.application.routes.draw do
  resources :elves
  resources :presents
  resources :dashboards
 
  root 'home#index'
end
