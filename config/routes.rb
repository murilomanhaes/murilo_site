MuriloSite::Application.routes.draw do
  resources :novidades

  devise_for :usuarios

  root to: "home#index"
  
  resources :somos 
  resources :computadores
  resources :sites
  resources :solucoes
  resources :servicos
      
end
