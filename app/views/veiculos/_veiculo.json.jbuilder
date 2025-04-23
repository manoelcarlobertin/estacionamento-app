json.extract! veiculo, :id, :placa, :modelo, :cliente_id, :created_at, :updated_at
json.url veiculo_url(veiculo, format: :json)
