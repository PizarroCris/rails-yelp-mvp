Review.destroy_all
Restaurant.destroy_all

puts "Criando restaurantes e reviews..."

restaurantes = [
  {
    name: "Pizzaria Napoli",
    address: "Rua das Flores, 123 - São Paulo",
    phone_number: "(11) 3456-7890",
    category: "italian",
    reviews: [
      { rating: 5, content: "A melhor pizza da cidade, massa fininha e crocante!" },
      { rating: 4, content: "Muito bom, mas podia ter mais opções de vinho." }
    ]
  },
  {
    name: "Sushi Zen",
    address: "Av. Paulista, 1000 - São Paulo",
    phone_number: "(11) 2222-3333",
    category: "japanese",
    reviews: [
      { rating: 5, content: "Peixes super frescos, atendimento impecável." },
      { rating: 3, content: "Achei o preço um pouco alto pelo que oferece." }
    ]
  },
  {
    name: "Chez Pierre",
    address: "Rua Paris, 89 - Curitiba",
    phone_number: "(41) 9999-8888",
    category: "french",
    reviews: [
      { rating: 5, content: "Croissants incríveis, saborosos e leves." },
      { rating: 4, content: "Ótimo café, ambiente charmoso." }
    ]
  },
  {
    name: "China Town",
    address: "Rua Liberdade, 55 - São Paulo",
    phone_number: "(11) 8765-4321",
    category: "chinese",
    reviews: [
      { rating: 5, content: "Os noodles são maravilhosos, muito saborosos." },
      { rating: 2, content: "Demoraram muito para servir, fiquei decepcionado." }
    ]
  },
  {
    name: "Belgian Waffles",
    address: "Av. Central, 77 - Rio de Janeiro",
    phone_number: "(21) 4000-5050",
    category: "belgian",
    reviews: [
      { rating: 5, content: "As melhores waffles que já comi!" },
      { rating: 4, content: "Bom atendimento, mas podia ter mais opções de café." }
    ]
  }
]

restaurantes.each do |r|
  restaurante = Restaurant.create!(
    name: r[:name],
    address: r[:address],
    phone_number: r[:phone_number],
    category: r[:category]
  )

  r[:reviews].each do |review|
    restaurante.reviews.create!(review)
  end
end

puts "Seed finalizado com sucesso ✅"
