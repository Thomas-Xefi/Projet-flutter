import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:monapp/data/models/country.dart';

class CountryRepository {
  CountryRepository();

  Future<List<Country>> getAllCountries() async {
    try {
      var response = await Dio()
          .get('https://restcountries.com/v2/all?fields=name,capital');

      List<Country> countryList = response.data
          .map<Country>((country) => Country.fromJson(country))
          .toList();
      countryList = countryList
          .where(
            (element) => element.capital != null,
          )
          .toList();
      // for (Country country in countryList) {
      //   String flag = await getFlagByCountryIso(country);
      //   country = country.copyWith(flag: flag);
      // }
      return countryList;
    } catch (e) {
      throw Exception("Une erreur est survenue avec l\'api : $e");
    }
  }

  // Future<String> getFlagByCountryIso(Country country) async {
  //   try {
  //     var response = await Dio().post(
  //         'https://countriesnow.space/api/v0.1/countries/flag/images',
  //         data: jsonEncode({"iso2": country.iso2}));

  //     return response.data['data']['flag'];

  //     // print(response.data['data']['flag']);
  //   } catch (e) {
  //     throw Exception("Une erreur est survenue avec l\'api : $e");
  //   }
  // }
}
