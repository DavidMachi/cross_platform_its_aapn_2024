// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke.api.models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokeApiModelsImpl _$$PokeApiModelsImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PokeApiModelsImpl',
      json,
      ($checkedConvert) {
        final val = _$PokeApiModelsImpl(
          title: $checkedConvert('title', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PokeApiModelsImplToJson(_$PokeApiModelsImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
    };
