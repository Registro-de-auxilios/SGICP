class CreateEmpleados < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.string :nombre
      t.integer :docIdentificacion
      t.string :estadoCivil
      t.string :direccion
      t.string :ciudad
      t.string :barrio
      t.integer :telefono
      t.integer :celular
      t.string :correoElectronico
      t.boolean :genero
      t.string :estudios
      t.string :experienciasLaborales
      t.date :fchInicio
      t.date :fchFinal
      t.string :cargo
      t.string :nomReferencia
      t.string :telReferencia

      t.timestamps
    end
  end
end
