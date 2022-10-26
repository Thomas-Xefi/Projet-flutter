import 'package:freezed_annotation/freezed_annotation.dart';
part 'question.freezed.dart';
part 'question.g.dart';

@freezed
class Question with _$Question {
  factory Question(String question, String answer,
      List<String> choices // @JsonKey(name: 'alpha2Code') String iso2,
      // @JsonKey(name: 'flag') String? flag,
      ) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}