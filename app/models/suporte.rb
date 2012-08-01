class Suporte < ActiveRecord::Base
    
  belongs_to :usuario

  before_create :definir_data
  
  validates :problema, presence: true

  def definir_data
    self.data = Date.today
  end
  
  def concluido?
   	data_conclusao.present?
  end
      
  attr_accessible :problema, :usuario_id, :data_conclusao, :conclusao
end
