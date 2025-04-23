class CreateMovimentos < ActiveRecord::Migration[8.0]
  def change
    create_table :movimentos do |t|
      t.datetime :entrada
      t.datetime :saida
      t.references :veiculo, null: false, foreign_key: true
      t.references :vaga, null: false, foreign_key: true

      t.timestamps
    end
  end
end
