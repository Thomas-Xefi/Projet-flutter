import 'package:get/get.dart';
import 'package:monapp/data/repositories/country_repository.dart';

import '../data/models/country.dart';

class GetxPageQuizController extends GetxController with StateMixin {
  CountryRepository countryRepository;

  late List<Country> listCountry;

  GetxPageQuizController({required this.countryRepository});

  @override
  void onInit() async {
    change(null, status: RxStatus.loading());
    listCountry = await countryRepository.getAllCountries();
    change(null, status: RxStatus.success());
    super.onInit();
  }
}
