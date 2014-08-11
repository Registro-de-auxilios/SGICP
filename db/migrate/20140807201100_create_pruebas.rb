class CreatePruebas < ActiveRecord::Migration
  def change
    create_table :pruebas do |t|
      t.string :nombre
      t.references :categoria, index: true

      t.timestamps
    end
  end
end
