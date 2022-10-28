import 'package:get/get.dart';
import 'package:monapp/data/models/question.dart';
import 'package:monapp/data/repositories/country_repository.dart';

import '../data/models/country.dart';

class QuizController extends GetxController with StateMixin {
  late List<Question> listquestion;

  @override
  void onInit() async {
    super.onInit();
  }
}
