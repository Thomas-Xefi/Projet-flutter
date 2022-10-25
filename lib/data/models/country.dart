import 'package:freezed/builder.dart';

@freezed
class Country with _$Country {
  const factory Country({
    required String name,
    required String capital,
    required String iso2,
    String? pathImg,
  }) = _Country;

  factory Country.fromJson(Map<String, Object?> json) => $CountryFromJson(json);
}
