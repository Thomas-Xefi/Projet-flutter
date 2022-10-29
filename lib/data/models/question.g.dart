// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      json['question'] as String,
      json['answer'] as String,
      (json['choices'] as List<dynamic>).map((e) => e as String?).toList(),
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answer': instance.answer,
      'choices': instance.choices,
    };
