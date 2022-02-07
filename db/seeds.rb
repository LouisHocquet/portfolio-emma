# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "=== Cleaning database... ==="
Work.destroy_all
puts "=== Works cleaned ! ==="
# Category.destroy_all
# puts "=== Categories cleaned ! ==="
# Image.destroy_all
# puts "=== Images cleaned ! ==="
puts "=== Database cleaned ! ==="

puts "=== Adding Works ==="
# Fairy Tale
work_fairy_tail = Work.create!(
  title: 'Fairy Tale',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In lectus rhoncus in tellus scelerisque urna suspendisse. 
  In eros, enim amet, nunc, nulla ut in aliquet dictum. Pharetra neque justo, ultrices habitant urna orci turpis. 
  Adipiscing sem nibh aliquam mattis diam.'
)
work_fairy_tail.images.create!(
  path: 'concept_decor/concept_decor_fairytale-mini.jpg',
  format: 4,
  main: true
)
# Colored Concept
work_concept_colored = Work.create!(
  title: 'Colored Concept',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In lectus rhoncus in tellus scelerisque urna suspendisse. 
  In eros, enim amet, nunc, nulla ut in aliquet dictum. Pharetra neque justo, ultrices habitant urna orci turpis. 
  Adipiscing sem nibh aliquam mattis diam.'
)
work_concept_colored.images.create!(
  path: 'concept_decor/concept_decor_concept_colored_bridge-mini.jpg',
  format: 2,
  main: true
)
work_concept_colored.images.create!(
  path: 'concept_decor/concept_decor_concept_colored_rocks-mini.jpg',
  format: 2,
  main: false
)
work_concept_colored.images.create!(
  path: 'concept_decor/concept_decor_concept_colored_boat-mini.jpg',
  format: 2,
  main: false
)
work_concept_colored.images.create!(
  path: 'concept_decor/concept_decor_concept_colored_winter-mini.jpg',
  format: 2,
  main: false
)
work_concept_colored.images.create!(
  path: 'concept_decor/concept_decor_concept_colored_night_rock-mini.jpg',
  format: 2,
  main: false
)

# Capu
work_capu = Work.create!(
  title: 'Capucine',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In lectus rhoncus in tellus scelerisque urna suspendisse. 
  In eros, enim amet, nunc, nulla ut in aliquet dictum. Pharetra neque justo, ultrices habitant urna orci turpis. 
  Adipiscing sem nibh aliquam mattis diam.'
)
work_capu.images.create!(
  path: 'chara_design/chara_design_capu_main-mini.jpg',
  format: 1,
  main: true
)

# Bubble World
work_bubble_world = Work.create!(
  title: 'Bubble World',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In lectus rhoncus in tellus scelerisque urna suspendisse. 
  In eros, enim amet, nunc, nulla ut in aliquet dictum. Pharetra neque justo, ultrices habitant urna orci turpis. 
  Adipiscing sem nibh aliquam mattis diam.'
)
work_bubble_world.images.create!(
  path: 'concept_decor/concept_decor_bubble_world-mini.jpg',
  format: 3,
  main: true
)
# Studio
work_studio = Work.create!(
  title: 'Bubble World',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In lectus rhoncus in tellus scelerisque urna suspendisse. 
  In eros, enim amet, nunc, nulla ut in aliquet dictum. Pharetra neque justo, ultrices habitant urna orci turpis. 
  Adipiscing sem nibh aliquam mattis diam.'
)
work_studio.images.create!(
  path: 'concept_decor/concept_decor_studio_1-mini.jpg',
  format: 2,
  main: true
)
work_studio.images.create!(
  path: 'concept_decor/concept_decor_studio_2-mini.jpg',
  format: 2,
  main: false
)

# Castle
work_castle = Work.create!(
  title: 'The Castle',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In lectus rhoncus in tellus scelerisque urna suspendisse. 
  In eros, enim amet, nunc, nulla ut in aliquet dictum. Pharetra neque justo, ultrices habitant urna orci turpis. 
  Adipiscing sem nibh aliquam mattis diam.'
)
work_castle.images.create!(
  path: 'chara_design/chara_design_final_main-mini.jpg',
  format: 2,
  main: true
)

# Mouse turn
work_mouse = Work.create!(
  title: 'The Mouse',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In lectus rhoncus in tellus scelerisque urna suspendisse. 
  In eros, enim amet, nunc, nulla ut in aliquet dictum. Pharetra neque justo, ultrices habitant urna orci turpis. 
  Adipiscing sem nibh aliquam mattis diam.'
)
work_mouse.images.create!(
  path: 'chara_design/chara_design_turn_main-mini.jpg',
  format: 2,
  main: true
)

puts "=== #{Work.count} works added! ==="