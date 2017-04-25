# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

produtos = Category.create(name: "Produtos")
eletro = Category.create(name: "Eletrodoméstico", parent: produtos)

fogao = Category.create(name: "Fogão", parent: eletro)
geladeira = Category.create(name: "Geladeira", parent: eletro)
batedeira = Category.create(name: "Batedeira", parent: eletro)
forno__microondas = Category.create(name: "Forno Microondas", parent: eletro)
freezer = Category.create(name: "Freezer", parent: eletro)
liquidificador = Category.create(name: "Liquidificador", parent: eletro)
mixer = Category.create(name: "Mixer", parent: eletro)
chapinha = Category.create(name: "Chapinha", parent: eletro)
secador_de_cabelo = Category.create(name: "Secador de Cabelo", parent: eletro)
aspirador = Category.create(name: "Aspirador", parent: eletro)
enceradeira = Category.create(name: "Enceradeira", parent: eletro)
maquina_de_lavar_roupa = Category.create(name: "Máquina de lavar roupas", parent: eletro)
secadora = Category.create(name: "Secadora", parent: eletro)
filmadora = Category.create(name: "filmadora", parent: eletro)
wifi = Category.create(name: "Wifi", parent: eletro)
dvd = Category.create(name: "DVD", parent: eletro)
televisor = Category.create(name: "TV", parent: eletro)
radios = Category.create(name: "Radio", parent: eletro)
videocassete = Category.create(name: "Videocassete", parent: eletro)

madeira = Category.create(name: "Madeira", parent: produtos)
paletes = Category.create(name: "Palete", parent: madeira)
guarda_roupa = Category.create(name: "Guarda-Roupa", parent: madeira)
mesa = Category.create(name: "Mesa", parent: madeira)
cristaleira = Category.create(name: "Cristaleira", parent: madeira)
armario = Category.create(name: "Armário", parent: madeira)
banco = Category.create(name: "Banco", parent: madeira)
gabinete = Category.create(name: "Gabinete", parent: madeira)
