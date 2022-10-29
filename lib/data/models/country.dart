// ignore_for_file: invalid_annotation_target, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
part 'country.freezed.dart';
part 'country.g.dart';

@freezed
class Country with _$Country {
  factory Country(
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'capital') String? capital,
    // @JsonKey(name: 'alpha2Code') String iso2,
    // @JsonKey(name: 'flag') String? flag,
  ) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}
