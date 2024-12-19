import 'package:pokedex/api/src/models/poke.models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'favourite_poke.providers.g.dart';

@riverpod
 class FavouritePoke extends _$FavouritePoke {
  @override
  List<PokeModels> build() {
    return [];
  }

  void add(PokeModels poke){
    state = [poke, ...state];
  }

  void remove(PokeModels poke){
    state = [...state.where((value) => value != poke),
    ];
  }
 }