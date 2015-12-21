json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nombre, :apellido, :nacimiento, :genero, :dni, :cuil_cuit, :telefono, :email, :direccion
  json.url cliente_url(cliente, format: :json)
end
