import 'dart:convert';

import 'package:dio/dio.dart';

class CountryRepository {
  CountryRepository();

  Future<void> getAllCountries() async {
    try {
      var response = await Dio().get(
          'https://restcountries.com/v2/all?fields=name,capital,alpha2Code');
      print(response);
    } catch (e) {
      print(e);
    }
  }

  Future<void> getFlagByCountryIso(/*model country*/) async {
    try {
      var response = await Dio().post(
          'https://countriesnow.space/api/v0.1/countries/flag/images',
          data: jsonEncode({"iso2": "NG"}));
      // response.data['data']['flag'];
    } catch (e) {
      print(e);
    }
  }
}
