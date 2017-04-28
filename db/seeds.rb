# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

domesticos = Category.create(name: "Eletrodomésticos")

fogao = Category.create(name: "Fogão", parent: domesticos)
geladeira = Category.create(name: "Geladeira", parent: domesticos)
batedeira = Category.create(name: "Batedeira", parent: domesticos)
torradeira = Category.create(name: "Torradeira", parent: domesticos)
forno__microondas = Category.create(name: "Forno Microondas", parent: domesticos)
freezer = Category.create(name: "Freezer", parent: domesticos)
liquidificador = Category.create(name: "Liquidificador", parent: domesticos)
mixer = Category.create(name: "Mixer", parent: domesticos)
chapinha = Category.create(name: "Chapinha", parent: domesticos)
secador_de_cabelo = Category.create(name: "Secador de Cabelo", parent: domesticos)
aspirador = Category.create(name: "Aspirador", parent: domesticos)
enceradeira = Category.create(name: "Enceradeira", parent: domesticos)
maquina_de_lavar_roupa = Category.create(name: "Máquina de lavar roupa", parent: domesticos)
maquina_de_lavar_louca = Category.create(name: "Máquina de lavar louça", parent: domesticos)
secadora = Category.create(name: "Secadora", parent: domesticos)
ferramenta = Category.create(name: "Ferramenta Elétrica", parent: domesticos)

eletros = Category.create(name: "Eletrônicos")

camera = Category.create(name: "Câmera Fotográfica", parent: eletros)
roteador_wifi = Category.create(name: "Roteador Wifi", parent: eletros)
dvd = Category.create(name: "DVD", parent: eletros)
televisor = Category.create(name: "TV", parent: eletros)
radio = Category.create(name: "Rádio", parent: eletros)
videocassete = Category.create(name: "Videocassete", parent: eletros)
pc = Category.create(name: "Computador", parent: eletros)
notebook = Category.create(name: "Notebook", parent: eletros)
monitor = Category.create(name: "Monitor", parent: eletros)
impressora = Category.create(name: "Vídeo Game", parent: eletros)
fixo = Category.create(name: "Telefone Fixo", parent: eletros)
celular = Category.create(name: "Telefone Celular", parent: eletros)
tablet = Category.create(name: "Tablet", parent: eletros)

lampadas = Category.create(name: "Lâmpadas")

fluorescente = Category.create(name: "Lâmpada Fluorescente", parent: lampadas)
incandescente = Category.create(name: "Lâmpada Incandescente", parent: lampadas)

madeira = Category.create(name: "Madeira")

pallet = Category.create(name: "Palete", parent: madeira)
guarda_roupa = Category.create(name: "Guarda-Roupa", parent: madeira)
mesa = Category.create(name: "Mesa", parent: madeira)
cristaleira = Category.create(name: "Cristaleira", parent: madeira)
armario = Category.create(name: "Armário", parent: madeira)
banco = Category.create(name: "Banco", parent: madeira)
gabinete = Category.create(name: "Gabinete", parent: madeira)
pedaco_madeira = Category.create(name: "Pedaços de Madeira", parent: madeira)
moldura = Category.create(name: "Moldura", parent: madeira)


plastico = Category.create(name: "Plástico")

garrafa_plastico = Category.create(name: "Garrafa Plástica", parent: plastico)
sacola_plastico = Category.create(name: "Sacos/Sacola Plástica", parent: plastico)
pote_plastico = Category.create(name: " Tapware/Recipiente Plástico", parent: plastico)
brinquedo_plastico = Category.create(name: "Brinquedo de Plástico", parent: plastico)
cozinha_plastico = Category.create(name: "Utensílios Plásticos de Cozinha", parent: plastico)
limpeza = Category.create(name: "Embalagem Plástica de Produto de Limpeza", parent: plastico)
pedaco_plastico = Category.create(name: "Pedaços de Plástico", parent: plastico)


vidro = Category.create(name: "Vidro")

garrafa_vidro = Category.create(name: "Garrafa de Vidro", parent: vidro)
pote_vidro = Category.create(name: "Pote/Recipiente de Vidro", parent: vidro)
decoracao_vidro = Category.create(name: "Peça de Decoração de Vidro", parent: vidro)
copo_vidro = Category.create(name: "Copo/Caneca de Vidro", parent: vidro)
espelho = Category.create(name: "Espelho", parent: vidro)
pedaco_vidro = Category.create(name: "Pedaços de Vidro", parent: vidro)
janela_vidro = Category.create(name: "Janela", parent: vidro)

metal = Category.create(name: "Metal")

garrafa_metal = Category.create(name: "Garrafa de Metal", parent: metal)
pote_metal = Category.create(name: "Pote/Recipiente de Metal", parent: metal)
latas = Category.create(name: "Lata de Alumínio", parent: metal)
lata_tinta = Category.create(name: "Lata/Galão de Tinta", parent: metal)
decoracao_metal = Category.create(name: "Peça de Decoração de Metal", parent: metal)
copo_metal = Category.create(name: "Copo/Caneca de metal", parent: metal)
tubos = Category.create(name: "Cano/Tubo de Metal", parent: metal)
pedaco_metal = Category.create(name: "Pedaços de Metal", parent: metal)
fio = Category.create(name: "Fio de Metal", parent: metal)
ferramenta = Category.create(name: "Ferramenta de Metal", parent: metal)

tecidos = Category.create(name: "Tecido")

retalho = Category.create(name: "Retalhos de Tecido", parent: tecidos)
roupas = Category.create(name: "Roupa", parent: tecidos)
cortina = Category.create(name: "Cortina", parent: tecidos)
banho = Category.create(name: "Toalha", parent: tecidos)
cama = Category.create(name: "Lençol", parent: tecidos)
cobertor = Category.create(name: "Cobertor", parent: tecidos)
tapete = Category.create(name: "Tapete", parent: tecidos)

moveis = Category.create(name: "Móveis")

sofa = Category.create(name: "Sofá", parent: moveis)


papel = Category.create(name: "Papel")

garrafa_papel = Category.create(name: "Tetrapak/Garrafa de Papelão", parent: papel)
pedaco_papel = Category.create(name: "Pedaços de Papel", parent: papel)
livro = Category.create(name: "Livro/Apostila", parent: papel)
caixa = Category.create(name: "Caixa de Papelão", parent: papel)

pneus = Category.create(name: "Pneus Inservíveis")

pneu_bicicleta = Category.create(name: "Pneu de Bicicleta", parent: pneus)
pneu_carro = Category.create(name: "Pneu de Automóvel", parent: pneus)

