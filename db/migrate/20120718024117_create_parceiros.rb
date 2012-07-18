class CreateParceiros < ActiveRecord::Migration
  def change
    create_table :parceiros do |t|
      t.string :nome
      t.string :endereco

      t.timestamps
    end
  end
end
