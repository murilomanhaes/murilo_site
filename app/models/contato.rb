class Contato < ActiveRecord::Base
  
  validates :nome, :email, :telefone, :mensagem, presence: true
   
  attr_accessible :nome, :email, :telefone, :mensagem
end
