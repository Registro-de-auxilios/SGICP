json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :empresa, :cantidad, :descripcion, :fchRealizacion, :plazoEnvio
  json.url pedido_url(pedido, format: :json)
end
