import './pokemon_type.dart';

class Pokemon {
  final String name;
  final String imagePath;
  final int weight;
  final int height;
  final List<PokemonType> types;
  Pokemon({this.name, this.imagePath, this.weight, this.height, this.types});
}