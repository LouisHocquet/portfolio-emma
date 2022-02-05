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
Category.destroy_all
puts "=== Categories cleaned ! ==="
Image.destroy_all
puts "=== Images cleaned ! ==="
puts "=== Database cleaned ! ==="

puts "=== Adding Images ==="
# <%= image_tag "concept_decor/concept_decor_fairytale-mini.jpg", class: "w-4" %>
# <%= image_tag "concept_decor/concept_decor_concept_colored_bridge-mini.jpg", class: "w-2" %>
# <%= image_tag "chara_design/chara_design_capu_main-mini.jpg", class: "w-1" %>
# <%= image_tag "concept_decor/concept_decor_bubble_world-mini.jpg", class: "w-3" %>
# <%= image_tag "concept_decor/concept_decor_concept_colored_rocks-mini.jpg", class: "w-2" %>

# Concept decor
img_cd_fairy_tail = Image.create!(
  path: 'concept_decor/concept_decor_fairytale-mini.jpg',
  format: 4,
  main: true
)
img_cd_concept_color_bridge = Image.create!(
  path: 'concept_decor/concept_decor_concept_colored_bridge-mini.jpg',
  format: 2,
  main: true
)
img_cd_concept_color_rock = Image.create!(
  path: 'concept_decor/concept_decor_concept_colored_rocks-mini.jpg',
  format: 2,
  main: false
)
img_cd_bubble = Image.create!(
  path: 'concept_decor/concept_decor_bubble_world-mini.jpg',
  format: 3,
  main: true
)

# Chara design
img_cd_fairy_tail = Image.create!(
  path: 'chara_design/chara_design_capu_main-mini.jpg',
  format: 1,
  main: true
)

puts "=== Adding Works ==="
work_fairy_tail = Work.create!(
  title: 'Fairy Tale',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In lectus rhoncus in tellus scelerisque urna suspendisse. 
  In eros, enim amet, nunc, nulla ut in aliquet dictum. Pharetra neque justo, ultrices habitant urna orci turpis. 
  Adipiscing sem nibh aliquam mattis diam.'
)