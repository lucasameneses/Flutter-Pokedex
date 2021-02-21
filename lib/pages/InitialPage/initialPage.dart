import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pokedex/controllers/pokecontroller.dart';
import 'package:pokedex/models/pokemon/pokemon.dart';
import 'package:pokedex/models/utils/common.dart';

class InitialPage extends StatefulWidget {
  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  PokeController pokecontroller = PokeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: pokecontroller.getPokemontList2(151),
        builder: (context, snapshot) {
          if (!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
          List<Pokemon> item = snapshot.data;
          return Container(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: item.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    print(item[index].types[1].type.name);
                    for (var i =0 ; i < (item[index].types.length-1); i++) {
                      print(item[index].types[i].type.name);
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Image.network(item[index].sprites.frontDefault),
                        Text(item[index].name),
                        // Text(item[index].types.toString())
                      ],
                    ),
                    decoration: BoxDecoration(
                        // color: Colors.lightGreen,
                        color: pokecontroller
                            .getColorType(item[index].types.first.type.name),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

// return Container(
//                 alignment: Alignment.center,
//                 child: Text(myProducts[index]["name"]),
//                 decoration: BoxDecoration(
//                     color: Colors.amber,
//                     borderRadius: BorderRadius.circular(15)),
//               );


// return ListTile(
//                   trailing: Image.network(
//                       "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" +
//                           (index + 1).toString() +
//                           ".png"),
//                   title: Text(
//                     item[index].name,
//                   ),
//                   // onTap: () => print(item.pokemon[index].sprites.frontDefault),
//                 );