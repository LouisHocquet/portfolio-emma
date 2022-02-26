# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# images format :
# 0 : portrait
# 1 : square
# 2 : landscape-s
# 3 : landscape-m
# 4 : landscape-l

# file types :
# 0 : img
# 1 : video

puts "=== Cleaning database... ==="
Category.destroy_all
# Work.destroy_all
# Image.destroy_all
puts "=== Works cleaned ! ==="
# Category.destroy_all
# puts "=== Categories cleaned ! ==="
# Image.destroy_all
# puts "=== Images cleaned ! ==="
puts "=== Database cleaned ! ==="

puts "=== Adding categories ... ==="
category_animation = Category.create!(
  name: 'Animation'
)
category_character_design = Category.create!(
  name: 'Character Design'
)
category_concept_decor = Category.create!(
  name: 'Concept Decor'
)
# category_illustration = Category.create!(
#   name: 'Illustration'
# )
# category_layout_character = Category.create!(
#   name: 'Layout Character'
# )
category_story_board = Category.create!(
  name: 'Story Board'
)

puts "=== #{Category.count} categories created ! ==="

puts "=== Adding Works ... ==="
# Fairy Tale
work_fairy_tail = category_concept_decor.works.create!(
  title: 'Fairy Tale',
  description: 'Panorama réalisé en digital painting sur Photoshop.'
)
work_fairy_tail.images.create!(
  path: 'concept_decor/concept_decor_fairy_main-mini.jpg',
  format: 4,
  file_type: 0,
  main: true
)
# Speed Paintings
work_speed_paintings = category_concept_decor.works.create!(
  title: 'Speed Paintings',
  description: 'Speedpaintings réalisés sur Photoshop pour tenter de capturer des atmosphères différentes rapidement.'
)
work_speed_paintings.images.create!(
  path: 'concept_decor/concept_decor_speedpaintings_main-mini.jpg',
  format: 2,
  file_type: 0,
  main: true
)
work_speed_paintings.images.create!(
  path: 'concept_decor/concept_decor_speedpaintings_1-mini.jpg',
  format: 2,
  file_type: 0,
  main: false
)
work_speed_paintings.images.create!(
  path: 'concept_decor/concept_decor_speedpaintings_2-mini.jpg',
  format: 2,
  file_type: 0,
  main: false
)

# Capu
work_capu = category_character_design.works.create!(
  title: 'Déconnecté(e) - Capucine',
  description: 'Character design de Capucine, personnage principal du très court métrage “Déconnecté(e)”.
  Capucine est une jeune étudiante qui doit suivre ses cours à distance à cause de la situation sanitaire de son pays. 
  Fatiguée et découragée, elle s’endort…'
)
work_capu.images.create!(
  path: 'character_design/chara_design_capu_main-mini.jpg',
  format: 1,
  file_type: 0,
  main: true
)
work_capu.images.create!(
  path: 'character_design/chara_design_capu_expression-mini.jpg',
  format: 2,
  file_type: 0,
  main: false
)
work_capu.images.create!(
  path: 'character_design/chara_design_capu_semi_poses-mini.jpg',
  format: 2,
  file_type: 0,
  main: false
)
work_capu.images.create!(
  path: 'character_design/chara_design_capu_turn-mini.jpg',
  format: 2,
  file_type: 0,
  main: false
)

# Déconnecté(e)
work_deconnectee = category_animation.works.create!(
  title: 'Déconnecté(e)',
  description: 'Très court métrage réalisé en 6 mois avec un groupe de 5 personnes. 
  Sur la seconde partie, dans la chambre, j’ai effectué le character design, les décors, le layout blocking, 
  l’animation, la colorisation et le lighting.'
)
work_deconnectee.images.create!(
  path: 'animation/deconnecte_last-mini.mp4',
  format: 2,
  file_type: 1,
  main: true
)

# Deconnectee decors
work_studio = category_concept_decor.works.create!(
  title: 'Déconnecté(e) - Décors',
  description: 'Décors du très court métrage “Déconnecté(e)”, réalisés sur photoshop à partir de modélisations 3D.'
)
work_studio.images.create!(
  path: 'concept_decor/concept_decor_deco_decors_main-mini.jpg',
  format: 2,
  file_type: 0,
  main: true
)
work_studio.images.create!(
  path: 'concept_decor/concept_decor_deco_decors_1-mini.jpg',
  format: 2,
  file_type: 0,
  main: false
)

# Cycle de marche
work_walk_static = category_animation.works.create!(
  title: 'Cycle de marche',
  description: 'Cycle de marche réalisé en animation traditionnelle en 17 frames.'
)
work_walk_static.images.create!(
  path: 'animation/walk_static-mini.mp4',
  format: 2,
  file_type: 1,
  main: true
)

# Terrarium
work_terrarium = category_concept_decor.works.create!(
  title: 'Terrarium magique',
  description: 'Props réalisé en digital painting sur photoshop.'
)
work_terrarium.images.create!(
  path: 'concept_decor/concept_decor_terrarium_main-mini.jpg',
  format: 3,
  file_type: 0,
  main: true
)
# Bateau fantome
work_bateau_fantome = category_concept_decor.works.create!(
  title: 'Bateau fantôme',
  description: 'Concept décor réalisé en digital painting sur Photoshop à partir d’une incrustation photographique.'
)
work_bateau_fantome.images.create!(
  path: 'concept_decor/concept_decor_bateau_fantome_main-mini.jpg',
  format: 2,
  file_type: 0,
  main: true
)

# Storyboard Simpson
work_storyboard_simpson = category_story_board.works.create!(
  title: 'Un anniversaire surprise - réinterprétation des Simpson',
  description: 'Storyboard réalisé à partir d’un de mes scénarios, en reprenant l’univers des Simpsons.'
)
work_storyboard_simpson.images.create!(
  path: 'storyboard/storyboard1clean_main.jpg',
  format: 2,
  file_type: 0,
  main: true
)
work_storyboard_simpson.images.create!(
  path: 'storyboard/storyboard2clean.jpg',
  format: 2,
  file_type: 0,
  main: false
)
work_storyboard_simpson.images.create!(
  path: 'storyboard/storyboard3clean.jpg',
  format: 2,
  file_type: 0,
  main: false
)
work_storyboard_simpson.images.create!(
  path: 'storyboard/storyboard4clean.jpg',
  format: 2,
  file_type: 0,
  main: false
)
work_storyboard_simpson.images.create!(
  path: 'storyboard/storyboard5clean.jpg',
  format: 2,
  file_type: 0,
  main: false
)
work_storyboard_simpson.images.create!(
  path: 'storyboard/storyboard6clean.jpg',
  format: 2,
  file_type: 0,
  main: false
)
work_storyboard_simpson.images.create!(
  path: 'storyboard/storyboard7clean.jpg',
  format: 2,
  file_type: 0,
  main: false
)
work_storyboard_simpson.images.create!(
  path: 'storyboard/storyboard8clean.jpg',
  format: 2,
  file_type: 0,
  main: false
)
work_storyboard_simpson.images.create!(
  path: 'storyboard/storyboard9clean.jpg',
  format: 2,
  file_type: 0,
  main: false
)
work_storyboard_simpson.images.create!(
  path: 'storyboard/storyboard10clean.jpg',
  format: 2,
  file_type: 0,
  main: false
)

# Chevalier solitaire
work_chevalier_solitaire = category_concept_decor.works.create!(
  title: 'Chevalier solitaire',
  description: 'Concept décor réalisé en digital painting sur Photoshop à partir d’une incrustation photographique.'
)
work_chevalier_solitaire.images.create!(
  path: 'concept_decor/concept_decor_chevalier_solitaire_main-mini.jpg',
  format: 2,
  file_type: 0,
  main: true
)

# Puck
work_puck = category_character_design.works.create!(
  title: 'Puck',
  description: 'Concept de Puck, un rongeur inspiré d’une gerboise à longues oreilles. 
  Vivant dans un monde médiéval fantastique, il est craintif mais curieux, ce qui le mène à quelques problèmes…'
)
work_puck.images.create!(
  path: 'character_design/chara_design_puck_main-mini.jpg',
  format: 2,
  main: true
)
work_puck.images.create!(
  path: 'character_design/chara_design_puck_1-mini.jpg',
  format: 2,
  main: false
)
work_puck.images.create!(
  path: 'character_design/chara_design_puck_2-mini.jpg',
  format: 2,
  main: false
)

puts "=== #{Work.count} works created ! ==="