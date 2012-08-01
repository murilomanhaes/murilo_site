class Parceiro < ActiveRecord::Base
  validates :nome, :endereco, presence: true
  
  attr_accessible :nome, :endereco
end
