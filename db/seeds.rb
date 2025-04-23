# db/seeds.rb
30.times do
  cliente = Cliente.create!(
    nome: Faker::Name.name,
    telefone: Faker::PhoneNumber.cell_phone,
    cpf: Faker::IdNumber.brazilian_citizen_number
  )

  Veiculo.create!(
    placa: Faker::Vehicle.license_plate,
    modelo: Faker::Vehicle.make_and_model,
    cliente: cliente
  )
end

30.times do |i|
  Vaga.create!(numero: i + 1, status: true)
end
puts "30 clientes e 30 veículos criados com sucesso!"
