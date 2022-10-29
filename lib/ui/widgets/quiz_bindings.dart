import 'package:get/get.dart';
import 'package:monapp/data/repositories/country_repository.dart';
import 'package:monapp/ui/widgets/quiz_controller.dart';

class QuizBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => GetxQuizController(
        countryRepository: CountryRepository(),
      ),
    );
  }
}
