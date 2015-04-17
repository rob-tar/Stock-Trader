Rails.application.routes.draw do

  resources :trades
    
  root 'home#index'
end
