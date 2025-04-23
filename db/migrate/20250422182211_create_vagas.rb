class CreateVagas < ActiveRecord::Migration[8.0]
  def change
    create_table :vagas do |t|
      t.string :numero
      t.boolean :status

      t.timestamps
    end
  end
end
