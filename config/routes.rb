MuriloSite::Application.routes.draw do
  devise_for :usuarios

  root to: "home#index"
  
  resources :somos 
  resources :computadores
  resources :sites
    
end
