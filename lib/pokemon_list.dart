import 'package:flutter/material.dart';
import 'models/pokemon.dart';
import 'pokemon_detail.dart';
import 'styles.dart';

class PokemonList extends StatelessWidget {
  final List<Pokemon> pokemons;

  PokemonList(this.pokemons);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pokedex', style: Styles.navBarTitle,)),
      body: ListView.builder(
        itemCount: this.pokemons.length,
        itemBuilder: _listViewItemBuild,
      ),
    );
  }
  Widget _listViewItemBuild(BuildContext context, int index) {
    var pokemon = this.pokemons[index];
    return ListTile(
      contentPadding: EdgeInsets.all(10.0),
      leading: _itemThumbnail(pokemon),
      title: _itemTitle(pokemon),
      onTap: () => _navigateToPokemonDetail(context, pokemon) ,
    );
  }
  void _navigateToPokemonDetail(BuildContext context, Pokemon pokemon) {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => PokemonDetail(pokemon)
    ));
  }

  Widget _itemThumbnail(Pokemon pokemon) {
    return Container(
      constraints: BoxConstraints.tightFor(width: 100.00),
      child: Image.network(pokemon.imagePath, fit: BoxFit.fitWidth)
    );
  }

  Widget _itemTitle(Pokemon pokemon) {
    return Text(pokemon.name, style: Styles.textDefault);
  }
}