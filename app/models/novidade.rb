class Novidade < ActiveRecord::Base
  
  attr_accessible :titulo, :resumo, :conteudo, :data
end
