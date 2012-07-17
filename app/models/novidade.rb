class Novidade < ActiveRecord::Base
  
  validates :titulo, :resumo, :conteudo, :data, presence: true
   
  attr_accessible :titulo, :resumo, :conteudo, :data
end
