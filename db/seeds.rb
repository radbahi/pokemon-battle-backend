# seed data tricky. how to associate attacks with types without hardcoding 151 entries? can't find reliable pokemon api
PokemonType.destroy_all
Pokemon.destroy_all
Type.destroy_all
User.destroy_all

type_list = JSON.parse(File.read('db/type.json'))
type_list.each do |type|
  Type.create(type.to_h)
end

pokemon_list = JSON.parse(File.read('db/pokemon.json'))
pokemon_list.each do |pokemon|
  Pokemon.create(pokemon.to_h)
end

moves_list = JSON.parse(File.read('db/moves.json'))
moves_list.each do |moves|
  Moves.create(moves.to_h)
end