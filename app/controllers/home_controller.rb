class HomeController < ApplicationController
  
    
  def index
    @novidades = Novidade.all 
    @parceiros = Parceiro.all   
  end
end
