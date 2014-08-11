json.array!(@empleados) do |empleado|
  json.extract! empleado, :id, :nombre, :docIdentificacion, :estadoCivil, :direccion, :ciudad, :barrio, :telefono, :celular, :correoElectronico, :genero, :estudios, :experienciasLaborales, :fchInicio, :fchFinal, :cargo, :nomReferencia, :telReferencia
  json.url empleado_url(empleado, format: :json)
end
