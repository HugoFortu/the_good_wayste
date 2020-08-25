# MATERIAL
materials_names = ['PET-1', 'PEHD-2', 'PVC-3', 'LDPE-4', 'PP-5', 'PS -6', 'Brique alimentaire', 'Metal', 'Carton fin', 'Carton épais', 'Film plastique', 'Aluminium', 'Papier', 'Papier plastifié', 'Acier', 'Verre', 'Liège', 'Fer', 'Carton ondulé' ]
materials_long_names = [
  'Polyéthylène Téréphtalate ',
  'Polyéthylène Haute Densité',
  'Polychlorure de Vinyle',
  'Polyethylène Basse Densité',
  'Polypropylène',
  'Polystyrène Expansé',
  'Carton, PEHD-2 et aluminum',
  'Acier, aluminum ou fer'
]

material_description = [
  'Il est transparent (on voit le produit à l’intérieur), plutôt souple et léger.',
  'Il est le plus souvent opaque, rigide et solide.',
  'Le plastique PVC est utilisé dans de nombreux produits de consommation courante, pour fabriquer les tuyaux de canalisations, les revêtements de sol, les encadrements de fenêtre.',
  'Le plastique LDPE est souple, résistant aux chocs, imperméable à l’eau. Il n’est pas recyclable dans nos poubelles de tri. Il doit être jeté dans la poubelle des déchets ménagers.',
  'Il conditionne des aliments, surtout quand ils sont gras. On retrouve le PP dans les plastiques les plus durs.',
  'Le plastique PS est dur et cassant. C’est l’un des plastiques les plus répandus dans nos maisons. Il n’est pas recyclable dans les poubelles de tri.',
  'le carton qui assure la rigidité, le polyéthylène qui permet de lutter contre l\'humidité et assure  l\'étanchéité, une fine feuille d’aluminium pour les emballages à durée de vie prolongée nécessitant une barrière à l’oxygène et à la lumière.'
]

materials_names.each_with_index do |mat, i|
  m = Material.new
  m.name = mat
  m.long_name = materials_long_names[i] if i <= 7
  m.description = material_description[i] if i <= 6
  m.slug = mat.downcase.gsub(/\s/, '-')
  m.save!
end

# PLACES
bordeaux = Place.new(name: 'Bordeaux', postcode: '33000')
bordeaux.save!

les_rousses = Place.new(name: 'Les Rousses', postcode: '39600')
les_rousses.save!

honfleur = Place.new(name: 'Honfleur', postcode: '14600')
honfleur.save!


# BORDEAUX - Garbadge
slugged_mats = ["pet-1", "pehd-2", "pvc-3", "ldpe-4", "pp-5", "ps--6", "brique-alimentaire", "metal", "carton-fin", "carton-épais", "film-plastique", "aluminium", "papier", "papier-plastifié", "acier", "verre", "liège", "fer", "carton-ondulé"]

b_green = Garbadge.new(
  place_id: bordeaux.id,
  color: "verte",
  accepted_materials: ["pet-1", "pehd-2", "brique-alimentaire", "metal", "carton-fin", "aluminium", "carton-fin", "carton-ondulé", "fer", "acier" ]
)
b_green.save!

b_glass = Garbadge.new(
  place_id: bordeaux.id,
  color: "borne de tri - verre",
  accepted_materials: ["verre"]
)

b_glass.save

b_grey = Garbadge.new(
  place_id: bordeaux.id,
  color: "grise",
  accepted_materials: []
)

b_grey.save!
slugged_mats.each do |mat|
  if !b_green.accepted_materials.include?(mat) || !b_glass.accepted_materials.include?(mat)
    b_grey.accepted_materials << mat
    b_grey.save!
  end
end

# Les Rousses - Garbadges

lr_paper = Garbadge.new(
  place_id: les_rousses.id,
  color: 'borne de tri - papier',
  accepted_materials: ['papier']
)
lr_paper.save!

lr_glass = Garbadge.new(
  place_id: les_rousses.id,
  color: 'borne de tri - verre',
  accepted_materials: ['verre']
)
lr_glass.save!

lr_blue = Garbadge.new(
  place_id: les_rousses.id,
  color: 'bleue',
  accepted_materials: []
)

lr_blue.save!

slugged_mats.each do |mat|
  if !lr_paper.accepted_materials.include?(mat) || !lr_glass.accepted_materials.include?(mat) || !mat == 'liège'
    lr_blue.accepted_materials << mat
    lr_blue.save!
  end
end

# Honfleur-Garbadge
h_yellow = Garbadge.new(
  place_id: honfleur.id,
  color: 'jaune',
  accepted_materials: ["pet-1", "pehd-2", "brique-alimentaire", "metal", "aluminium", "acier", "fer"]
)

h_yellow.save!

h_blue = Garbadge.new(
  place_id: honfleur.id,
  color: 'bleue',
  accepted_materials: ['carton-ondulé', 'carton-fin', 'papier']
)

h_blue.save!

h_green = Garbadge.new(
  place_id: honfleur.id,
  color: 'verte',
  accepted_materials: ['verre']
)

h_green.save!

h_grey = Garbadge.new(
  place_id: honfleur.id,
  color: 'grise',
  accepted_materials: []
)

h_grey.save!

slugged_mats.each do |mat|
  if !h_blue.accepted_materials.include?(mat) || !h_green.accepted_materials.include?(mat) || !h_yellow .accepted_materials.include?(mat)
    h_grey.accepted_materials << mat
    h_grey.save!
  end
end


