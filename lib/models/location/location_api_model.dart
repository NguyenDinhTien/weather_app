import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_api_model.freezed.dart';
part 'location_api_model.g.dart';

@freezed
class LocationApi with _$LocationApi {
  factory LocationApi({
    required String name,
    required String state,
    required double lat,
    required double lon,
    //@LocalNameConverter()
    // @JsonKey(name: "local_names>")
    //     String ? localNameEn,
  }) = _LocationApi;

  factory LocationApi.fromJson(Map<String, dynamic> json) =>
      _$LocationApiFromJson(json);
}


