
import 'package:flutter/material.dart';
//import 'pokemon_detail.dart';
import 'mocks/mock_pokemon.dart';
//import 'models/pokemon.dart';
import 'pokemon_list.dart';

void main() {
  final mockPokemons = MockPokemon.fetchAll();
  return runApp(MaterialApp(home: PokemonList(mockPokemons)));
}