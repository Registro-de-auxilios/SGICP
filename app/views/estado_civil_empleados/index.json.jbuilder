json.array!(@estado_civil_empleados) do |estado_civil_empleado|
  json.extract! estado_civil_empleado, :id, :empleados_id, :estado_civils_id
  json.url estado_civil_empleado_url(estado_civil_empleado, format: :json)
end
