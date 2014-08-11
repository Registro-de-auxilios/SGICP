json.array!(@categorias_insumos) do |categorias_insumo|
  json.extract! categorias_insumo, :id, :insumos_id, :categorias_id
  json.url categorias_insumo_url(categorias_insumo, format: :json)
end
