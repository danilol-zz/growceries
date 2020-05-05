# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#
products = ["Leite", "Pão", "Pão de forma", "Ovo", "Arroz", "Feijão", "Macarrão", "Sabonete", "Laranja",
            "Cebola", "Alho", "Suco", "Chocolate", "Pizza", "Sorvete", "Snacks", "Batata", "Maçã",
            "Banana", "Uva", "Fermento", "Trigo", "Bolacha", "Chá", "Café", "Azeite", "Óleo", "Cerveja",
            "Manteiga", "Cebolinha", "Salsinha", "Cheiro verde", "Pimenta", "Wrap", "Detergente", "Sabão em pó",
            "Cândida", "Shampoo", "Condicionador", "Absorvente", "Desodorante", "Escova de dente", "Pasta de dente",
            "Água com gás", "Massa de tomate", "Molho de tomate", "Açúcar", "Sal", "Sal marinho", "Brócolis"]
puts "Loading #{products.size} products..."

products.each { |p| Product.create name: p }
puts "Done!"
