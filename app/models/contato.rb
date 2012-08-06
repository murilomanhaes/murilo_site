class Contato < ActiveRecord::Base
  
  validates :nome, :email, :telefone, :mensagem, presence: true
   
  attr_accessible :nome, :email, :telefone, :mensagem, :data_conclusao, :conclusao
  
  def concluido?
   	data_conclusao.present?
  end
end
