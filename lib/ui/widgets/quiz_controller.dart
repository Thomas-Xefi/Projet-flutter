import 'package:get/get.dart';
import 'package:monapp/data/models/question.dart';
import 'package:monapp/data/repositories/country_repository.dart';

import '../../data/models/country.dart';

class GetxQuizController extends GetxController with StateMixin {
  CountryRepository? countryRepository;

  late List<Country> listCountry;
  List<Question> listQuestion = [];
  late Rx<Question> currentQuestion;
  Rx<String> isCorrect = "".obs;
  Rx<int> index = 0.obs;
  int score = 0;

  GetxQuizController({required this.countryRepository});

  @override
  void onInit() async {
    change(null, status: RxStatus.loading());
    listCountry = (await countryRepository?.getAllCountries())!;
    generateQuestions();
    currentQuestion = listQuestion[index.value].obs;
    change(null, status: RxStatus.success());
    super.onInit();
  }

  void generateQuestions() {
    listCountry.shuffle();
    listCountry.take(5).forEach(
      (country) {
        listCountry.shuffle();
        List<String?> answers = listCountry
            .where((element) => element.name != country.name)
            .take(3)
            .map(
          (e) {
            return e.capital;
          },
        ).toList();
        answers.add(country.capital);
        answers.shuffle();
        Question question = Question(
            "Quelle est la capital de ce pays : ${country.name}",
            country.capital!,
            answers);
        listQuestion.add(question);
      },
    );
  }

  void changeStatus(answer, response) {
    if (response == answer) {
      isCorrect.value = 'correct';
    } else {
      isCorrect.value = 'incorrect';
    }
  }

  void incrementScore() {
    if (isCorrect.value == 'correct') {
      score++;
    }
  }

  void changePage() {
    index.value++;
    if (index.value == 5) {
      Get.toNamed('/score');
    } else {
      isCorrect.value = '';
      currentQuestion.value = listQuestion[index.value];
    }
  }
}
