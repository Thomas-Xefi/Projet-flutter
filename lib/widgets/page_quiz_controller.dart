import 'package:get/get.dart';
import 'package:monapp/data/repositories/country_repository.dart';

class GetxPageQuizController extends GetxController with StateMixin {
  CountryRepository countryRepository;
  GetxPageQuizController({required this.countryRepository});

  @override
  void onInit() {
    change(null, status: RxStatus.loading());
    countryRepository.getFlagByCountryIso();
    change(null, status: RxStatus.success());
    super.onInit();
  }
}
