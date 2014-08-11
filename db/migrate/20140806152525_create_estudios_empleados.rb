class CreateEstudiosEmpleados < ActiveRecord::Migration
  def change
    create_table :estudios_empleados do |t|
      t.references :empleados
      t.references :estudios

      t.timestamps
    end
  end
end
