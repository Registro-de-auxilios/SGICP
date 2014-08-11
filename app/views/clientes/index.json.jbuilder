json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nombre, :apellidos, :nombreEmpresa, :nit, :ciudad, :telefono, :direccion, :correoElectronico
  json.url cliente_url(cliente, format: :json)
end
