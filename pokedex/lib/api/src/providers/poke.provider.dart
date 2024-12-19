import 'package:pokedex/api/poke_api.dart';
import 'package:pokedex/api/src/models/poke.models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'poke.provider.g.dart';

@riverpod
FutureOr<PokeModels> poke (PokeRef ref) async{
  final api = ref.watch(pokeApiProvider);
  final model = await api.fetchPoke();

  return model;
}