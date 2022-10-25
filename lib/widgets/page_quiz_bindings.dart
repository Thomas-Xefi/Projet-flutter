import 'package:get/get.dart';
import 'package:monapp/data/repositories/country_repository.dart';
import 'package:monapp/widgets/page_quiz_controller.dart';

class PageQuizBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => GetxPageQuizController(
        countryRepository: CountryRepository(),
      ),
    );
  }
}
