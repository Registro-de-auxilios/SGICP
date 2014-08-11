class CreateInsumos < ActiveRecord::Migration
  def change
    create_table :insumos do |t|
      t.string :cliente
      t.date :fch_creacion
      t.string :categoria
      t.integer :cantidad
      t.integer :precio

      t.timestamps
    end
  end
end
