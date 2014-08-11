json.array!(@estudios) do |estudio|
  json.extract! estudio, :id, :nombre
  json.url estudio_url(estudio, format: :json)
end
