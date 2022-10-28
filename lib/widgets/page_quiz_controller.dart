import 'package:get/get.dart';
import 'package:monapp/data/models/question.dart';
import 'package:monapp/data/repositories/country_repository.dart';

import '../data/models/country.dart';

class GetxPageQuizController extends GetxController with StateMixin {
  CountryRepository countryRepository;

  late List<Country> listCountry;
  List<Question> listQuestion = [];
  late Rx<Question> currentQuestion;

  GetxPageQuizController({required this.countryRepository});

  @override
  void onInit() async {
    change(null, status: RxStatus.loading());
    listCountry = await countryRepository.getAllCountries();
    listCountry.shuffle();
    listCountry.take(5).forEach(
      (country) {
        listCountry.shuffle();
        Question question = Question(
          "Quelle est la capital de ce pays : ${country.name}",
          "${country.capital}",
          listCountry
              .where((element) => element.name != country.name)
              .take(5)
              .map(
            (e) {
              return e.capital;
            },
          ).toList(),
        );
        listQuestion.add(question);
      },
    );
    currentQuestion = listQuestion.first.obs;
    change(null, status: RxStatus.success());
    super.onInit();
  }
}
