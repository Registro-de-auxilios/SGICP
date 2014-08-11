class EstadoCivilEmpleado < ActiveRecord::Base
  belongs_to :empleados
  belongs_to :estado_civils
end
