class HomeController < ApplicationController
  
  before_filter :authenticate_usuario!
  
  def index
    @novidades = Novidade.all    
  end
end
