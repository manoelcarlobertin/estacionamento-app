class CreateVeiculos < ActiveRecord::Migration[8.0]
  def change
    create_table :veiculos do |t|
      t.string :placa
      t.string :modelo
      t.references :cliente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
