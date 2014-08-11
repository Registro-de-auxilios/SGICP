class CreateEstadoCivilEmpleados < ActiveRecord::Migration
  def change
    create_table :estado_civil_empleados do |t|
      t.references :empleados, index: true
      t.references :estado_civils, index: true

      t.timestamps
    end
  end
end
