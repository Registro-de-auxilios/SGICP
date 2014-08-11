json.array!(@facturacions) do |facturacion|
  json.extract! facturacion, :id, :fecha, :fchVencimiento, :cliente, :cotizacion, :descripcion, :cantidad, :precio, :iva, :valorIva, :total
  json.url facturacion_url(facturacion, format: :json)
end
