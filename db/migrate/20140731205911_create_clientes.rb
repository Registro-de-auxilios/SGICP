class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :apellidos
      t.string :nombreEmpresa
      t.integer :nit
      t.string :ciudad
      t.integer :telefono
      t.string :direccion
      t.string :correoElectronico

      t.timestamps
    end
  end
end
