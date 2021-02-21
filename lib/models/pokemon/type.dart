import 'package:pokedex/models/utils/common.dart';

class Type {
  int id;
  String name;
  DamageRelations damageRelations;
  List<GameIndices> gameIndices;
  NamedAPIResource generation;
  NamedAPIResource moveDamageClass;
  List<Names> names;
  List<TypePokemon> pokemon;
  List<NamedAPIResource> moves;

  Type(
      {this.id,
      this.name,
      this.damageRelations,
      this.gameIndices,
      this.generation,
      this.moveDamageClass,
      this.names,
      this.pokemon,
      this.moves});

  Type.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    damageRelations = json['damage_relations'] != null
        ? new DamageRelations.fromJson(json['damage_relations'])
        : null;
    if (json['game_indices'] != null) {
      gameIndices = new List<GameIndices>();
      json['game_indices'].forEach((v) {
        gameIndices.add(new GameIndices.fromJson(v));
      });
    }
    generation = json['generation'] != null
        ? new NamedAPIResource.fromJson(json['generation'])
        : null;
    moveDamageClass = json['move_damage_class'] != null
        ? new NamedAPIResource.fromJson(json['move_damage_class'])
        : null;
    if (json['names'] != null) {
      names = new List<Names>();
      json['names'].forEach((v) {
        names.add(new Names.fromJson(v));
      });
    }
    if (json['pokemon'] != null) {
      pokemon = new List<TypePokemon>();
      json['pokemon'].forEach((v) {
        pokemon.add(new TypePokemon.fromJson(v));
      });
    }
    if (json['moves'] != null) {
      moves = new List<NamedAPIResource>();
      json['moves'].forEach((v) {
        moves.add(new NamedAPIResource.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    if (this.damageRelations != null) {
      data['damage_relations'] = this.damageRelations.toJson();
    }
    if (this.gameIndices != null) {
      data['game_indices'] = this.gameIndices.map((v) => v.toJson()).toList();
    }
    if (this.generation != null) {
      data['generation'] = this.generation.toJson();
    }
    if (this.moveDamageClass != null) {
      data['move_damage_class'] = this.moveDamageClass.toJson();
    }
    if (this.names != null) {
      data['names'] = this.names.map((v) => v.toJson()).toList();
    }
    if (this.pokemon != null) {
      data['pokemon'] = this.pokemon.map((v) => v.toJson()).toList();
    }
    if (this.moves != null) {
      data['moves'] = this.moves.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DamageRelations {
  List<NamedAPIResource> noDamageTo;
  List<NamedAPIResource> halfDamageTo;
  List<NamedAPIResource> doubleDamageTo;
  List<NamedAPIResource> noDamageFrom;
  List<NamedAPIResource> halfDamageFrom;
  List<NamedAPIResource> doubleDamageFrom;

  DamageRelations(
      {this.noDamageTo,
      this.halfDamageTo,
      this.doubleDamageTo,
      this.noDamageFrom,
      this.halfDamageFrom,
      this.doubleDamageFrom});

  DamageRelations.fromJson(Map<String, dynamic> json) {
    if (json['no_damage_to'] != null) {
      noDamageTo = new List<NamedAPIResource>();
      json['no_damage_to'].forEach((v) {
        noDamageTo.add(new NamedAPIResource.fromJson(v));
      });
    }
    if (json['half_damage_to'] != null) {
      halfDamageTo = new List<NamedAPIResource>();
      json['half_damage_to'].forEach((v) {
        halfDamageTo.add(new NamedAPIResource.fromJson(v));
      });
    }
    if (json['double_damage_to'] != null) {
      doubleDamageTo = new List<NamedAPIResource>();
      json['double_damage_to'].forEach((v) {
        doubleDamageTo.add(new NamedAPIResource.fromJson(v));
      });
    }
    if (json['no_damage_from'] != null) {
      noDamageFrom = new List<NamedAPIResource>();
      json['no_damage_from'].forEach((v) {
        noDamageFrom.add(new NamedAPIResource.fromJson(v));
      });
    }
    if (json['half_damage_from'] != null) {
      halfDamageFrom = new List<NamedAPIResource>();
      json['half_damage_from'].forEach((v) {
        halfDamageFrom.add(new NamedAPIResource.fromJson(v));
      });
    }
    if (json['double_damage_from'] != null) {
      doubleDamageFrom = new List<NamedAPIResource>();
      json['double_damage_from'].forEach((v) {
        doubleDamageFrom.add(new NamedAPIResource.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.noDamageTo != null) {
      data['no_damage_to'] = this.noDamageTo.map((v) => v.toJson()).toList();
    }
    if (this.halfDamageTo != null) {
      data['half_damage_to'] =
          this.halfDamageTo.map((v) => v.toJson()).toList();
    }
    if (this.doubleDamageTo != null) {
      data['double_damage_to'] =
          this.doubleDamageTo.map((v) => v.toJson()).toList();
    }
    if (this.noDamageFrom != null) {
      data['no_damage_from'] =
          this.noDamageFrom.map((v) => v.toJson()).toList();
    }
    if (this.halfDamageFrom != null) {
      data['half_damage_from'] =
          this.halfDamageFrom.map((v) => v.toJson()).toList();
    }
    if (this.doubleDamageFrom != null) {
      data['double_damage_from'] =
          this.doubleDamageFrom.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class GameIndices {
  int gameIndex;
  NamedAPIResource generation;

  GameIndices({this.gameIndex, this.generation});

  GameIndices.fromJson(Map<String, dynamic> json) {
    gameIndex = json['game_index'];
    generation = json['generation'] != null
        ? new NamedAPIResource.fromJson(json['generation'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['game_index'] = this.gameIndex;
    if (this.generation != null) {
      data['generation'] = this.generation.toJson();
    }
    return data;
  }
}

class Names {
  String name;
  NamedAPIResource language;

  Names({this.name, this.language});

  Names.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    language = json['language'] != null
        ? new NamedAPIResource.fromJson(json['language'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    if (this.language != null) {
      data['language'] = this.language.toJson();
    }
    return data;
  }
}

class TypePokemon {
  int slot;
  NamedAPIResource pokemon;

  TypePokemon({this.slot, this.pokemon});

  TypePokemon.fromJson(Map<String, dynamic> json) {
    slot = json['slot'];
    pokemon = json['pokemon'] != null
        ? new NamedAPIResource.fromJson(json['pokemon'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['slot'] = this.slot;
    if (this.pokemon != null) {
      data['pokemon'] = this.pokemon.toJson();
    }
    return data;
  }
}
