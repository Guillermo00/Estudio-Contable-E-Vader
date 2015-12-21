json.array!(@facturas) do |factura|
  json.extract! factura, :id, :monto, :emision
  json.url factura_url(factura, format: :json)
end
