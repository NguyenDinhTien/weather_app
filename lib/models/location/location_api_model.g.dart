// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationApi _$$_LocationApiFromJson(Map<String, dynamic> json) =>
    _$_LocationApi(
      name: json['name'] as String,
      state: json['state'] as String,
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
    );

Map<String, dynamic> _$$_LocationApiToJson(_$_LocationApi instance) =>
    <String, dynamic>{
      'name': instance.name,
      'state': instance.state,
      'lat': instance.lat,
      'lon': instance.lon,
    };
