import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'poke.api.models.g.dart';
part 'poke.api.models.freezed.dart';

@freezed
class PokeApiModels with _$PokeApiModels{
  const factory PokeApiModels({
    required String title,
    required String url,
  }) = _PokeApiModels;
factory PokeApiModels.fromJson(Map<String, dynamic> json)
=> _$PokeApiModelsFromJson(json);
}