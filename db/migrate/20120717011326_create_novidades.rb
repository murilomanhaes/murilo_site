class CreateNovidades < ActiveRecord::Migration
  def change
    create_table :novidades do |t|
      t.string :titulo
      t.text :resumo
      t.text :conteudo
      t.date :data

      t.timestamps
    end
  end
end
