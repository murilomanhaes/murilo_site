class HomeController < ApplicationController
  
    
  def index
    @novidades = Novidade.order('created_at').last(6) 
    @parceiros = Parceiro.all   
  end
end
