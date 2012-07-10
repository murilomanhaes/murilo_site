class ComputadoresController < ApplicationController
  
    before_filter :authenticate_usuario!
       
  def index

  end
end
