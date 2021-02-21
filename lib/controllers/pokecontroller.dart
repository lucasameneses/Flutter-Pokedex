import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as Http;
import 'package:pokedex/models/pokemon/pokemon.dart';
import 'package:pokedex/models/utils/api.dart';
import 'package:pokedex/models/utils/common.dart';

class PokeController extends GetxService {

  RxList<dynamic> pokemonList = [].obs;

  String baseUrl = "https://pokeapi.co/api/v2/";

  ///Demora e é complexa
  Future<List<Pokemon>> getPokemontList() async {
    List<Pokemon> pokeList = [];

    baseUrl += "pokemon/?limit=151";
    var response = await Http.get(baseUrl);
    Map map = json.decode(response.body);
    List<NamedAPIResource> commonResultList = Common.fromJson(map).results;
    print(commonResultList[1].url);
    for (NamedAPIResource result in commonResultList) {
      response = await Http.get(result.url);
      Map map = json.decode(response.body);
      pokeList.add(Pokemon.fromJson(map));
    }
    return pokeList;
  }

  ///Gambiarra e demora
  Future<List<Pokemon>> getPokemontList2(int val) async {
    List<Pokemon> pokeList = [];
    
    for (var i = 1; i < val; i++) {
      String url = baseUrl + "pokemon/" + i.toString();
      print(url);

      var response =  await Http.get(url);
      Map map = json.decode(response.body);
      pokeList.add(Pokemon.fromJson(map));
      url="";
      // pokemon.add();
    }
    return pokeList;
  }

  ///Tentendo resolver o problema de varias requisiçoes usando await
  Future<List<Pokemon>> getPokemontList3(int val)  async{
    List<Pokemon> pokeList = [];
    
    for (var i = 1; i < val; i++) {
      String url = baseUrl + "pokemon/" + i.toString();
      print(url); 

      var response =  await Http.get(url);
      Map map = json.decode(response.body);
      pokeList.add(Pokemon.fromJson(map));

      url="";
    }
    return pokeList;
  }


  ///Dependendo do tipo retora uma cor  
  Color getColorType(String type) {
    switch (type) {
      case 'normal':
        return Colors.brown[400];
        break;
      case 'fire':
        return Colors.red;
        break;
      case 'water':
        return Colors.blue;
        break;
      case 'grass':
        return Colors.green;
        break;
      case 'electric':
        return Colors.amber;
        break;
      case 'ice':
        return Colors.cyanAccent[400];
        break;
      case 'fighting':
        return Colors.orange;
        break;
      case 'poison':
        return Colors.purple;
        break;
      case 'ground':
        return Colors.orange[300];
        break;
      case 'flying':
        return Colors.indigo[200];
        break;
      case 'psychic':
        return Colors.pink;
        break;
      case 'bug':
        return Colors.lightGreen[500];
        break;
      case 'rock':
        return Colors.grey;
        break;
      case 'ghost':
        return Colors.indigo[400];
        break;
      case 'dark':
        return Colors.brown;
        break;
      case 'dragon':
        return Colors.indigo[800];
        break;
      case 'steel':
        return Colors.blueGrey;
        break;
      case 'fairy':
        return Colors.pinkAccent[100];
        break;
      default:
        return Colors.grey;
        break;
    }
  }
}
