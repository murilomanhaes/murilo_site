class Contato < ActiveRecord::Base
  validates :email, :mensagem, :nome, :telefone, presence: true

  attr_accessible :email, :mensagem, :nome, :telefone, :data_conclusao, :conclusao
  
  def concluido?
   	data_conclusao.present?
  end
end
