json.array!(@pruebas) do |prueba|
  json.extract! prueba, :id, :nombre, :categoria_id
  json.url prueba_url(prueba, format: :json)
end
