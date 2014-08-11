class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.string :empresa
      t.integer :cantidad
      t.string :descripcion
      t.date :fchRealizacion
      t.date :plazoEnvio

      t.timestamps
    end
  end
end
