class Suporte < ActiveRecord::Base
    
  belongs_to :usuario

  before_create :definir_data

  def definir_data
    self.data = Date.today
  end
  
  def concluido?
   	data_conclusao.present?
  end
      
  attr_accessible :problema, :usuario_id
end
