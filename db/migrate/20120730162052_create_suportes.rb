class CreateSuportes < ActiveRecord::Migration
  def change
    create_table :suportes do |t|
      t.integer :usuario_id
      t.text :problema
      t.date :data
      t.date :data_conclusao
      t.text :conclusao

      t.timestamps
    end
  end
end
