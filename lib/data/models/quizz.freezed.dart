// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quizz.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Quizz _$QuizzFromJson(Map<String, dynamic> json) {
  return _Quizz.fromJson(json);
}

/// @nodoc
mixin _$Quizz {
  List<Question> get listquestion => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizzCopyWith<Quizz> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizzCopyWith<$Res> {
  factory $QuizzCopyWith(Quizz value, $Res Function(Quizz) then) =
      _$QuizzCopyWithImpl<$Res, Quizz>;
  @useResult
  $Res call({List<Question> listquestion, int score});
}

/// @nodoc
class _$QuizzCopyWithImpl<$Res, $Val extends Quizz>
    implements $QuizzCopyWith<$Res> {
  _$QuizzCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listquestion = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      listquestion: null == listquestion
          ? _value.listquestion
          : listquestion // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuizzCopyWith<$Res> implements $QuizzCopyWith<$Res> {
  factory _$$_QuizzCopyWith(_$_Quizz value, $Res Function(_$_Quizz) then) =
      __$$_QuizzCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Question> listquestion, int score});
}

/// @nodoc
class __$$_QuizzCopyWithImpl<$Res> extends _$QuizzCopyWithImpl<$Res, _$_Quizz>
    implements _$$_QuizzCopyWith<$Res> {
  __$$_QuizzCopyWithImpl(_$_Quizz _value, $Res Function(_$_Quizz) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listquestion = null,
    Object? score = null,
  }) {
    return _then(_$_Quizz(
      null == listquestion
          ? _value._listquestion
          : listquestion // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Quizz implements _Quizz {
  _$_Quizz(final List<Question> listquestion, this.score)
      : _listquestion = listquestion;

  factory _$_Quizz.fromJson(Map<String, dynamic> json) =>
      _$$_QuizzFromJson(json);

  final List<Question> _listquestion;
  @override
  List<Question> get listquestion {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listquestion);
  }

  @override
  final int score;

  @override
  String toString() {
    return 'Quizz(listquestion: $listquestion, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Quizz &&
            const DeepCollectionEquality()
                .equals(other._listquestion, _listquestion) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listquestion), score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizzCopyWith<_$_Quizz> get copyWith =>
      __$$_QuizzCopyWithImpl<_$_Quizz>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuizzToJson(
      this,
    );
  }
}

abstract class _Quizz implements Quizz {
  factory _Quizz(final List<Question> listquestion, final int score) = _$_Quizz;

  factory _Quizz.fromJson(Map<String, dynamic> json) = _$_Quizz.fromJson;

  @override
  List<Question> get listquestion;
  @override
  int get score;
  @override
  @JsonKey(ignore: true)
  _$$_QuizzCopyWith<_$_Quizz> get copyWith =>
      throw _privateConstructorUsedError;
}
