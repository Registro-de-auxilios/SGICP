json.array!(@estudios_empleados) do |estudios_empleado|
  json.extract! estudios_empleado, :id, :empleados, :estudios
  json.url estudios_empleado_url(estudios_empleado, format: :json)
end
