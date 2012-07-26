MuriloSite::Application.routes.draw do
  resources :parceiros

  resources :novidades

  devise_for :usuarios

  root to: "home#index"   
  resources :somos 
  resources :computadores
  resources :sites
  resources :solucoes
  resources :servicos
  
  resources :administracoes do 
     collection do
      get :alterar_deletar
      get :cadastrar
      get :consultar
    end
  end
  
      
end
