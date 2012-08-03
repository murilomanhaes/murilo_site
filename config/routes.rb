MuriloSite::Application.routes.draw do

  resources :parceiros do 
    collection do 
      get :relatorio
    end
  end    

  resources :novidades do 
    collection do 
      get :relatorio
    end
  end

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
      get :consultar_relatorio
    end
  end
  
  resources :suportes, except: [:edit, :update, :destroy] do
		member do
		  get :concluir
		  put :salvar_conclusao
	  end
	  collection do
      get :adminsuporte
      get :concluidos
      get :consultar_concluidos
    end
  end
  
      
end
