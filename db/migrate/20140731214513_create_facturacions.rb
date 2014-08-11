class CreateFacturacions < ActiveRecord::Migration
  def change
    create_table :facturacions do |t|
      t.date :fecha
      t.date :fchVencimiento
      t.string :cliente
      t.integer :cotizacion
      t.string :descripcion
      t.integer :cantidad
      t.integer :precio
      t.integer :iva
      t.integer :valorIva
      t.integer :total

      t.timestamps
    end
  end
end
