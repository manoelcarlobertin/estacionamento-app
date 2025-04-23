class CreateClientes < ActiveRecord::Migration[8.0]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :telefone
      t.string :cpf

      t.timestamps
    end
  end
end
