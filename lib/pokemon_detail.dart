import 'package:flutter/material.dart';
import 'models/pokemon.dart';
import 'styles.dart';

class PokemonDetail extends StatelessWidget {
  final Pokemon pokemon;

  PokemonDetail(this.pokemon);

  @override
  Widget build(BuildContext context) {
  return Scaffold(
        appBar: AppBar(
          title: Text(
            pokemon.name,
            style: Styles.navBarTitle
          )),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _renderBody(context, pokemon),
        ));
  }
  List<Widget> _renderBody(BuildContext context, Pokemon pokemon) {
    var result = List<Widget>();
    result.add(_bannerImage(pokemon.imagePath, 200.0));
    result.add(Text(" weight: ${pokemon.weight}", style: Styles.textDefault));
    result.add(Text(" height: ${pokemon.height}", style: Styles.textDefault));
    result.addAll(_renderTypes(context, pokemon));
    return result;
  }

  List<Widget> _renderTypes(BuildContext context, Pokemon pokemon) {
    var result = List<Widget>();
    for (int i=0; i < pokemon.types.length; i++) {
      result.add(_typeName(pokemon.types[i].name));
    }
    return result;
  }
  
  Widget _typeName(String name){
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
      child: Text(name,
        textAlign: TextAlign.center,
        style: Styles.headerLarge));
  }
  
  Widget _bannerImage(String url, double height) {
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(url, fit: BoxFit.fitHeight),
    );
  }
}
