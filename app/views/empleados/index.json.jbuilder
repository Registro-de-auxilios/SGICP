json.array!(@empleados) do |empleado|
  json.extract! empleado, :id, :name, :doc, :estado_id, :direccion, :barrio, :ciudad, :telefono, :celular, :correo, :genero, :estudios, :experiencia, :fchinicio, :fchfinal, :cargo, :ref, :telref
  json.url empleado_url(empleado, format: :json)
end
