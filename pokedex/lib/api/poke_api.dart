import 'package:dio/dio.dart';
import 'package:pokedex/api/http_client.dart';
import 'package:pokedex/api/models/poke.api.models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'poke_api.g.dart';

@riverpod
PokeApi pokeApi (PokeApiRef ref) {
  final client = ref.watch(httpClientProvider);
  final api = PokeApi(client);
  return api;
}

class PokeApi {

  const PokeApi(this.client);
  final Dio client;
  
  Future<PokeApiModels> fetchPoke() async{

    final response = await client.get<Map<String, Object?>>("/gimme");
    final model = PokeApiModels.fromJson(response.data!);

    return model;
  }
}