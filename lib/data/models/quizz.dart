import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:monapp/data/models/question.dart';
part 'quizz.freezed.dart';
part 'quizz.g.dart';

@freezed
class Quizz with _$Quizz {
  factory Quizz(
    List<Question> listquestion,
    int score,
  ) = _Quizz;

  factory Quizz.fromJson(Map<String, dynamic> json) => _$QuizzFromJson(json);
}
