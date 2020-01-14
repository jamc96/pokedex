import '../models/pokemon.dart';
import '../models/pokemon_type.dart';

class MockPokemon extends Pokemon {
  static final List<Pokemon> pokemons = [
    Pokemon(
      name: 'bulbasaur',
      imagePath: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png',
      weight: 69,
      height: 5,
      types: <PokemonType> [
        PokemonType(
          id: 0,
          name: 'poison',
        ),
        PokemonType(
          id: 1,
          name: 'grass',
        )
      ]),
    Pokemon(
      name: 'ivysaur',
      imagePath: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/2.png',
      weight: 130,
      height: 10,
      types: <PokemonType> [
        PokemonType(
          id: 0,
          name: 'poison',
        ),
        PokemonType(
          id: 1,
          name: 'grass',
        )
      ]),
    Pokemon(
      name: 'venusaur',
      imagePath: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/3.png',
      weight: 1000,
      height: 20,
      types: <PokemonType> [
        PokemonType(
          id: 0,
          name: 'poison',
        ),
        PokemonType(
          id: 1,
          name: 'grass',
        )
      ])
  ];
  static Pokemon fetchAny() {
    return MockPokemon.pokemons.first;
  }

  static List<Pokemon> fetchAll() {
    return MockPokemon.pokemons;
  }
}