# MATERIAL
Container.delete_all
Map.delete_all
Component.delete_all
Material.delete_all
Product.delete_all
Garbage.delete_all
Place.delete_all
pet = Material.new(name: "Plastique PET-1", long_name: "Polyéthylène Téréphtalate",
                  description: "Le plastique PET se recycle à 100% et ne perd pas en principe ses caractéristiques fondamentales et peut donc être réutilisé à plusieurs reprises. Le PET est souvent utilisé pour la production de bouteilles à boissons. Il est à noter que son recyclage exige une extrême pureté de la matière collectée.",
                  recyclability: "Se recycle à 100%", status: "vert")
pet.save!

pehd = Material.new(name: "Plastique PEHD-2", long_name: "Polyéthylène Haute Densité",
                    description: "Le plastique HDPE est opaque, résistant aux chocs, imperméable à l’eau, à certains produits chimiques, au gaz et aux arômes. il est principalement utilisé dans les secteurs de l’alimentation, du médical et de la chimie. Il entre dans la fabrication de réservoirs, d’équipements sportifs, de prothèses, de produits d’emballage et de plusieurs autres éléments.",
                    recyclability: "Représente 50% du marché des bouteilles en plastique", status: "jaune")
pehd.save!

pvc = Material.new(name: "Plastique PVC-3", long_name: "Polychlorure de Vinyle",
                  description: "Le plastique PVC , 3ème plastique utilisé dans le monde, est utilisé dans de nombreux produits de consommation courante, pour fabriquer les tuyaux de canalisations, les revêtements de sol, les encadrements de fenêtre.",
                  recyclability: "Se recycle à 100%", status: "vert")
pvc.save!

ldpe = Material.new(name: "Plastique LDPE-4", long_name: "Polyethylène Basse Densité",
                  description: "Le plastique LDPE est souple, résistant aux chocs, imperméable à l’eau. Il n’est pas recyclable dans nos poubelles de tri. Il doit être jeté dans la poubelle des déchets ménagers.",
                  recyclability: "Non recyclable dans nos poubelles de tri", status: "jaune")
ldpe.save!

pp = Material.new(name: "Plastique PP-5", long_name: "Polypropylène",
                  description: "Le polypropylène, 2ème plastique utilisé dans le monde, fait partie de la famille des thermoplastiques, des plastiques qui se forment sous la chaleur et durcissent ensuite, de manière réversible. Ils sont donc réutilisables. Le PP est utilisé essentiellement dans l’industrie automobile et dans l’industrie alimentaire.",
                  recyclability: "Aujourd’hui 100% recyclable, le polypropylène peut être recyclé plusieurs fois avant d’atteindre sa fin de vie.", status: "vert")
pp.save!

ps = Material.new(name: "Plastique PS -6", long_name: "Polystyrène Expansé",
                  description: "Le plastique PS est dur et cassant. C’est l’un des plastiques les plus répandus dans nos maisons.",
                  recyclability: "Non recyclable dans nos poubelles de tri", status:"jaune")
ps.save!

film_plastique = Material.new(name: "Film plastique", long_name: "",
                              description: "Il existe 2 catégories de films et d’emballages souples :
Ceux constitués de PolyEthylène. Ils entourent les bouteilles d’eau, emballent les légumes surgelés ou constituent la matière première des sacs de caisse. On les reconnaît car ils ont tendance à s’étirer avant de se déchirer !
Ceux constitués de plusieurs composants et/ou d’autres types de résines plastiques, comme le PP (PolyPropylène). Ils emballent les barres de céréales, la nourriture pour animaux ou encore les chips. Ils ne s’étirent pas mais se découpent bien droit pour permettre une ouverture facile de l’emballage.",
                              recyclability: "100% des films pourront être triés sur le territoire d’ici 2022.", status: "jaune")
film_plastique.save!

brique_alimentaire = Material.new(name: "Brique alimentaire", long_name: "",
                                  description: " Les briques alimentaires sont des emballages complexes composés de 2 à 3 matériaux selon leurs applications:
- le carton qui assure la rigidité
- le polyéthylène qui permet de lutter contre l'humidité et assure l'étanchéité
- une fine feuille d’aluminium pour les emballages à durée de vie prolongée nécessitant une barrière à l’oxygène et à la lumière. ",
                                  recyclability: "", status: "jaune")
brique_alimentaire.save!

papier = Material.new(name: "Papier", long_name:"",
                      description: "Chaque Français consomme en moyenne 53 kg de papier par an. Au travail, un employé de bureau utilise plus de 2500 feuilles de papier chaque année ! Alors que la quasi-totalité des papiers sont recyclables, le taux de recyclage du papier en France n’est que de 55%. Selon la qualité du tri, le papier peut être recyclé de 3 à 7 fois et être transformé en nouvelles feuilles, en papier hygiénique ou encore en matériaux d’isolation.",
                      recyclability: "Le taux de recyclage du papier en France est de 55%", status: "jaune")
papier.save!

carton_fin = Material.new(name: "Carton fin", long_name:"",
                          description: "Comme le papier, le carton est fabriqué à partir de cellulose, une fibre de bois. En France, le taux de recyclage du papier/carton est de 65%. Tous les cartons se recyclent, à l’exception des cartons souillés. On peut réutiliser la matière jusqu’à une dizaine de fois, après quoi la fibre se dégrade. Recycler le carton permet de fabriquer de nouveaux emballages en carton, des boîtes à chaussures, des boîtes d’œufs, des meubles, des objets de décoration …",
                          recyclability: "En Europe, environ 60% des cartons sont fabriqués à partir de carton recyclé.", status: "jaune")
carton_fin.save!

carton_ondule = Material.new(name: "Carton ondulé", long_name:"",
                            description: "Le carton ondulé est un matériau léger et rigide constitué par une ou plusieurs feuilles de papier cannelé collées sur une ou entre plusieurs feuilles cartonnées.",
                            recyclability: "Le carton ondulé est dans de nombreux cas 100 % recyclable.", status: "vert")
carton_ondule.save!

carton_epais = Material.new(name: "Carton épais", long_name: "",
                            description: "Comme le papier, le carton est fabriqué à partir de cellulose, une fibre de bois. En France, le taux de recyclage du papier/carton est de 65%. Tous les cartons se recyclent, à l’exception des cartons souillés. On peut réutiliser la matière jusqu’à une dizaine de fois, après quoi la fibre se dégrade. Recycler le carton permet de fabriquer de nouveaux emballages en carton, des boîtes à chaussures, des boîtes d’œufs, des meubles, des objets de décoration …",
                            recyclability: "En Europe, environ 60% des cartons sont fabriqués à partir de carton recyclé.", status: "jaune")
carton_epais.save!

verre = Material.new(name: "Verre", long_name: "",
                    description: "La naturalité du verre se double de sa stabilité. Il supporte bien les conditions de chaleur et de froid. Inerte et inaltérable, le verre résiste de manière exemplaire aux agents atmosphériques ou chimiques. Ces résistances naturelles font du verre un matériau sain, et une réponse idéale aux exigences d’emballage de l’industrie agro-alimentaire.",
                    recyclability: "100 % du verre collecté en France est recyclé.", status: "vert")
verre.save!

liege = Material.new(name: "Liège", long_name: "",
                      description: "Le bouchon de liège est un produit naturel. Cependant, il se décompose mal et il vaut mieux ne pas le composter. En revanche, dans certains cas il peut être recyclé.
                      Le recyclage des bouchons permet la fabrication de granulés de liège pour l’isolation et de plaques pour les parquets. Le liège est un très bon isolant thermique, acoustique, vibratoire et résistant à l’eau.
                      Il peut aussi être très utile pour des produits d’un usage plus courants comme des tableaux de liège, des sièges, objets design et même des semelles de chaussures.",
                      recyclability: "82% des déchets du liège sont valorisés", status: "jaune")
liege.save!

aluminium = Material.new(name: "Aluminium", long_name: "",
                          description: "L’aluminium d’emballages est partie intégrante de notre quotidien. Ses qualités « barrière » pour préserver les denrées alimentaires, sa légèreté et sa grande facilité de recyclage le confirment comme un matériau d’emballage d’avenir.
                          Sur le marché de l’aluminium d’emballage, on estime qu’une moitié des tonnages alimente les applications rigides, notamment les canettes, et que l’autre trouve des débouchés dans les applications semi-rigides (barquettes pour plats cuisinés, capsules,…) et souples.",
                          recyclability: "L’aluminium est 100% recyclable", status: "vert")
aluminium.save!

acier = Material.new(name: "Acier", long_name:"",
                      description: "Les canettes de boisson et certaines conserves sont en aluminium, tandis que les aérosols, les bidons et la majorité des boîtes de conserve sont en acier. Ces deux matériaux L’acier permettent de conserver les produits dans de très bonnes conditions. L’acier offre un avantage bien pratique pour le recyclage : il est magnétique. Ainsi, au centre de tri, on le sépare des autres matériaux en l’attirant à l’aide d’un aimant.",
                      recyclability: "L'acier est un matériau recyclable à l'infini.", status: "vert")
acier.save!

metal = Material.new(name: "Métal", long_name:"",
                      description: "Une des principales caractéristiques des emballages métalliques est qu'ils sont fabriqués avec des éléments naturels qui maintiennent leurs propriétés physiques.",
                      recyclability: "78% des emballages métalliques recyclés en Europe", status: "vert")
metal.save!

# PLACES
bordeaux = Place.new(name: 'Bordeaux', postcode: '33000', photo_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Place_de_la_Bourse%2C_Bordeaux%2C_France.jpg/1920px-Place_de_la_Bourse%2C_Bordeaux%2C_France.jpg", instruction: ["Borne de tri: verre", "Poubelle verte: plastiques, brique alimentaire, carton, métal", "Poubelle grise: reste des déchets ménagers"], contact: ["UNE QUESTION, UNE INFO?",
                                                                                                                                                                                                                                                                                                                                                                                              "www.bordeaux-metropole.fr/gerer-ses-dechets",
                                                                                                                                                                                                                                                                                                                                                                                              "Pour tout savoir sur le tri:", "0800 22 21 20"])
bordeaux.save!

les_rousses = Place.new(name: 'Les Rousses', postcode: '39600', photo_url: "https://www.jura-tourism.com/wp-content/uploads/wpetourisme/les-rousses-ete-290161.jpg", instruction: ["Borne de tri: papier", "Borne de tri: verre", "Poubelle bleue: reste des déchets ménagers"], contact: ["Pour des consignes de tri toujours à jour, rendez-vous à l’adresse:",                                                                                                                                                                                                                                                   "www.letri.com",
                                                                                                                                                                                                                                                                                                        "Le tri SYDOM DU JURA",
                                                                                                                                                                                                                                                                                                        "03 84 47 44 41"])
les_rousses.save!

honfleur = Place.new(name: 'Honfleur', postcode: '14600', photo_url: "https://www.normandie-tourisme.fr/wp-content/uploads/2020/02/6993-Vieux-bassin-dHonfleur-%C2%A9-aterrom-Fotolia.com-%C2%A9-aterrom-Fotolia.com_-1600x900.jpg", instruction: ["Poubelle jaune: plastiques pet-1 et pehd-2, brique alimentaire, métal", "Poubelle verte: verre", "Poubelle grise: reste des déchets ménagers"], contact: ["Consignes détaillées et emplacement des colonnes de tri:",
                                                                                                                                                                                                                                                                                                                                                                                                                                                    "www.sdomode.fr",
                                                                                                                                                                                                                                                                                                                                                                                                                                                    "UN DOUTE? UNE QUESTION ?",
                                                                                                                                                                                                                                                                                                                                                                                                                                                    "02 32 43 14 75"])
honfleur.save!

lyon = Place.new(name: 'Lyon', postcode: '69000', photo_url: "https://www.myexpat.fr/wp-content/uploads/panorama-immobilier-lyon.jpeg", instruction: ["Poubelle jaune: plastiques, métal, papier et carton", "Silo à verre: verre", "Poubelle grise: reste des déchets ménagers"], contact: ["RETROUVEZ LES NOUVELLES CONSIGNES DE TRI SUR:",
                                                                                                                                                                                                                                                                                          "www.grandlyon.com/tri"])
lyon.save!

# BORDEAUX - Garbage
slugged_mats = ["plastique-pet-1", "plastique-pehd-2", "plastique-pvc-3", "plastique-ldpe-4", "plastique-pp-5", "plastique-ps-6", "brique-alimentaire", "metal", "carton-fin", "carton-epais", "film-plastique", "aluminium", "papier", "acier", "verre", "liege", "carton-ondule"]

b_green = Garbage.new(
  place_id: bordeaux.id,
  color: "verte",
  accepted_materials: ["plastique-pet-1", "plastique-pehd-2", "brique-alimentaire", "metal", "carton-fin", "aluminium", "carton-fin", "carton-ondule", "fer", "acier" ]
)
b_green.save!

b_glass = Garbage.new(
  place_id: bordeaux.id,
  color: "borne de tri - verre",
  accepted_materials: ["verre"]
)

b_glass.save

b_grey = Garbage.new(
  place_id: bordeaux.id,
  color: "grise",
  accepted_materials: []
)

b_grey.save!
slugged_mats.each do |mat|
  unless b_green.accepted_materials.include?(mat) || b_glass.accepted_materials.include?(mat)
    b_grey.accepted_materials << mat
    b_grey.save!
  end
end
# lyon - garbages

lyon_yellow = Garbage.new(
  place_id: lyon.id,
  color: "jaune",
  accepted_materials: ["plastique-pet-1", "plastique-pehd-2", "plastique-pvc-3", "plastique-ldpe-4", "plastique-pp-5", "plastique-ps-6", "brique-alimentaire", "metal", "aluminium", "carton-fin", "carton-ondule", "fer", "acier" ]
)
lyon_yellow.save!

lyon_glass = Garbage.new(
  place_id: lyon.id,
  color: "borne de tri - verre",
  accepted_materials: ["verre"]
)

lyon_glass.save

lyon_grey = Garbage.new(
  place_id: lyon.id,
  color: "grise",
  accepted_materials: []
)

lyon_grey.save!
slugged_mats.each do |mat|
  unless lyon_yellow.accepted_materials.include?(mat) || lyon_glass.accepted_materials.include?(mat)
    lyon_grey.accepted_materials << mat
    lyon_grey.save!
  end
end
# Les Rousses - garbages

lr_paper = Garbage.new(
  place_id: les_rousses.id,
  color: 'borne de tri - papier',
  accepted_materials: ['papier']
)
lr_paper.save!

lr_glass = Garbage.new(
  place_id: les_rousses.id,
  color: 'borne de tri - verre',
  accepted_materials: ['verre']
)
lr_glass.save!

lr_blue = Garbage.new(
  place_id: les_rousses.id,
  color: 'bleue',
  accepted_materials: []
)

lr_blue.save!

slugged_mats.each do |mat|
  unless lr_paper.accepted_materials.include?(mat) || lr_glass.accepted_materials.include?(mat) || mat == 'liege'
    lr_blue.accepted_materials << mat
    lr_blue.save!
  end
end

# Honfleur-Garbage
h_yellow = Garbage.new(
  place_id: honfleur.id,
  color: 'jaune',
  accepted_materials: ["plastique-pet-1", "plastique-pehd-2", "brique-alimentaire", "metal", "aluminium", "acier", "fer"]
)

h_yellow.save!

h_blue = Garbage.new(
  place_id: honfleur.id,
  color: 'bleue',
  accepted_materials: ['carton-ondule', 'carton-fin', 'papier']
)

h_blue.save!

h_green = Garbage.new(
  place_id: honfleur.id,
  color: 'verte',
  accepted_materials: ['verre']
)

h_green.save!

h_grey = Garbage.new(
  place_id: honfleur.id,
  color: 'grise',
  accepted_materials: []
)

h_grey.save!

slugged_mats.each do |mat|
  unless h_blue.accepted_materials.include?(mat) || h_green.accepted_materials.include?(mat) || h_yellow .accepted_materials.include?(mat)
    h_grey.accepted_materials << mat
    h_grey.save!
  end
end

Material.all.each do |material|
  material.slug = material.name.parameterize
  material.save
end

m = Map.new(
  place_id: les_rousses.id,
  name: "Verre"
 )
m.save!

["360-774 D29E2, 39220, Les Rousses",
   "339-189 Route des Rousses d'Amont,39220 Les Rousses",
   "32-250 Rue des Narcisses, 39220",
   "22-164 Rue du Prechavin, 39220",
   "165 Route des Rousses en Bas, 39220 Les Rousses",
   "372 Route du Noirmont, 39220",
   "793 Route du Noirmont, 39220",
   "2-86 Montée du Rochat, 39220"].each do |address|
    ap "#{address} ..."
    m.containers.create!(address: address)
   end

m_d = Map.new(
  place_id: les_rousses.id,
  name: "Déchèterie"
  )
m_d.save!

["Déchetterie des Rousses, 39220, Les Rousses"].each { |address| m_d.containers.create!(address: address)}

m_e = Map.new(
  place_id: les_rousses.id,
  name: "Déchèts verts"
  )
m_e.save!

["Déchetterie des Rousses, 39220, Les Rousses"].each { |address| m_e.containers.create!(address: address)}

m_a = Map.new(
  place_id: les_rousses.id,
  name: "Ampoules"
  )
m_a.save!

["Déchetterie des Rousses, 39220, Les Rousses"].each { |address| m_a.containers.create!(address: address)}

m_b = Map.new(
  place_id: les_rousses.id,
  name: "Batteries"
  )
m_b.save!

["Déchetterie des Rousses, 39220, Les Rousses"].each { |address| m_b.containers.create!(address: address)}

m_t = Map.new(
  place_id: les_rousses.id,
  name: "Tissus"
  )
m_t.save!

["Déchetterie des Rousses, 39220, Les Rousses"].each { |address| m_t.containers.create!(address: address)}

m_l = Map.new(
  place_id: lyon.id,
  name: "Verre"
  )
m_l.save!

filepath = 'storage/lyon_verre.json'
benne_lyon = []

JSON.parse(File.read(filepath))["features"].each do |x|
  voie = x["properties"]["voie"]
  cp = x["properties"]["code_postal"]
  benne_lyon << "#{voie}, #{cp}"
  end

benne_lyon.each do |address|
  ap "#{address} ..."
  m_l.containers.create!(address: address)
end
