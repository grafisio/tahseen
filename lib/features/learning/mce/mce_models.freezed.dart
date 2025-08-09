// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mce_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MasteryCheckConfig {

 String get moduleId; Skill get skill; int get numQuestions; double get passThreshold;// percent
 int get maxCriticalErrors;
/// Create a copy of MasteryCheckConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MasteryCheckConfigCopyWith<MasteryCheckConfig> get copyWith => _$MasteryCheckConfigCopyWithImpl<MasteryCheckConfig>(this as MasteryCheckConfig, _$identity);

  /// Serializes this MasteryCheckConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MasteryCheckConfig&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&(identical(other.skill, skill) || other.skill == skill)&&(identical(other.numQuestions, numQuestions) || other.numQuestions == numQuestions)&&(identical(other.passThreshold, passThreshold) || other.passThreshold == passThreshold)&&(identical(other.maxCriticalErrors, maxCriticalErrors) || other.maxCriticalErrors == maxCriticalErrors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,moduleId,skill,numQuestions,passThreshold,maxCriticalErrors);

@override
String toString() {
  return 'MasteryCheckConfig(moduleId: $moduleId, skill: $skill, numQuestions: $numQuestions, passThreshold: $passThreshold, maxCriticalErrors: $maxCriticalErrors)';
}


}

/// @nodoc
abstract mixin class $MasteryCheckConfigCopyWith<$Res>  {
  factory $MasteryCheckConfigCopyWith(MasteryCheckConfig value, $Res Function(MasteryCheckConfig) _then) = _$MasteryCheckConfigCopyWithImpl;
@useResult
$Res call({
 String moduleId, Skill skill, int numQuestions, double passThreshold, int maxCriticalErrors
});




}
/// @nodoc
class _$MasteryCheckConfigCopyWithImpl<$Res>
    implements $MasteryCheckConfigCopyWith<$Res> {
  _$MasteryCheckConfigCopyWithImpl(this._self, this._then);

  final MasteryCheckConfig _self;
  final $Res Function(MasteryCheckConfig) _then;

/// Create a copy of MasteryCheckConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? moduleId = null,Object? skill = null,Object? numQuestions = null,Object? passThreshold = null,Object? maxCriticalErrors = null,}) {
  return _then(_self.copyWith(
moduleId: null == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as String,skill: null == skill ? _self.skill : skill // ignore: cast_nullable_to_non_nullable
as Skill,numQuestions: null == numQuestions ? _self.numQuestions : numQuestions // ignore: cast_nullable_to_non_nullable
as int,passThreshold: null == passThreshold ? _self.passThreshold : passThreshold // ignore: cast_nullable_to_non_nullable
as double,maxCriticalErrors: null == maxCriticalErrors ? _self.maxCriticalErrors : maxCriticalErrors // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MasteryCheckConfig].
extension MasteryCheckConfigPatterns on MasteryCheckConfig {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MasteryCheckConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MasteryCheckConfig() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MasteryCheckConfig value)  $default,){
final _that = this;
switch (_that) {
case _MasteryCheckConfig():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MasteryCheckConfig value)?  $default,){
final _that = this;
switch (_that) {
case _MasteryCheckConfig() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String moduleId,  Skill skill,  int numQuestions,  double passThreshold,  int maxCriticalErrors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MasteryCheckConfig() when $default != null:
return $default(_that.moduleId,_that.skill,_that.numQuestions,_that.passThreshold,_that.maxCriticalErrors);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String moduleId,  Skill skill,  int numQuestions,  double passThreshold,  int maxCriticalErrors)  $default,) {final _that = this;
switch (_that) {
case _MasteryCheckConfig():
return $default(_that.moduleId,_that.skill,_that.numQuestions,_that.passThreshold,_that.maxCriticalErrors);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String moduleId,  Skill skill,  int numQuestions,  double passThreshold,  int maxCriticalErrors)?  $default,) {final _that = this;
switch (_that) {
case _MasteryCheckConfig() when $default != null:
return $default(_that.moduleId,_that.skill,_that.numQuestions,_that.passThreshold,_that.maxCriticalErrors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MasteryCheckConfig implements MasteryCheckConfig {
  const _MasteryCheckConfig({required this.moduleId, required this.skill, this.numQuestions = 3, this.passThreshold = 80.0, this.maxCriticalErrors = 1});
  factory _MasteryCheckConfig.fromJson(Map<String, dynamic> json) => _$MasteryCheckConfigFromJson(json);

@override final  String moduleId;
@override final  Skill skill;
@override@JsonKey() final  int numQuestions;
@override@JsonKey() final  double passThreshold;
// percent
@override@JsonKey() final  int maxCriticalErrors;

/// Create a copy of MasteryCheckConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MasteryCheckConfigCopyWith<_MasteryCheckConfig> get copyWith => __$MasteryCheckConfigCopyWithImpl<_MasteryCheckConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MasteryCheckConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MasteryCheckConfig&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&(identical(other.skill, skill) || other.skill == skill)&&(identical(other.numQuestions, numQuestions) || other.numQuestions == numQuestions)&&(identical(other.passThreshold, passThreshold) || other.passThreshold == passThreshold)&&(identical(other.maxCriticalErrors, maxCriticalErrors) || other.maxCriticalErrors == maxCriticalErrors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,moduleId,skill,numQuestions,passThreshold,maxCriticalErrors);

@override
String toString() {
  return 'MasteryCheckConfig(moduleId: $moduleId, skill: $skill, numQuestions: $numQuestions, passThreshold: $passThreshold, maxCriticalErrors: $maxCriticalErrors)';
}


}

/// @nodoc
abstract mixin class _$MasteryCheckConfigCopyWith<$Res> implements $MasteryCheckConfigCopyWith<$Res> {
  factory _$MasteryCheckConfigCopyWith(_MasteryCheckConfig value, $Res Function(_MasteryCheckConfig) _then) = __$MasteryCheckConfigCopyWithImpl;
@override @useResult
$Res call({
 String moduleId, Skill skill, int numQuestions, double passThreshold, int maxCriticalErrors
});




}
/// @nodoc
class __$MasteryCheckConfigCopyWithImpl<$Res>
    implements _$MasteryCheckConfigCopyWith<$Res> {
  __$MasteryCheckConfigCopyWithImpl(this._self, this._then);

  final _MasteryCheckConfig _self;
  final $Res Function(_MasteryCheckConfig) _then;

/// Create a copy of MasteryCheckConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? moduleId = null,Object? skill = null,Object? numQuestions = null,Object? passThreshold = null,Object? maxCriticalErrors = null,}) {
  return _then(_MasteryCheckConfig(
moduleId: null == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as String,skill: null == skill ? _self.skill : skill // ignore: cast_nullable_to_non_nullable
as Skill,numQuestions: null == numQuestions ? _self.numQuestions : numQuestions // ignore: cast_nullable_to_non_nullable
as int,passThreshold: null == passThreshold ? _self.passThreshold : passThreshold // ignore: cast_nullable_to_non_nullable
as double,maxCriticalErrors: null == maxCriticalErrors ? _self.maxCriticalErrors : maxCriticalErrors // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$RemedialPackage {

 String get moduleId; List<String> get exercises; String get summary;
/// Create a copy of RemedialPackage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemedialPackageCopyWith<RemedialPackage> get copyWith => _$RemedialPackageCopyWithImpl<RemedialPackage>(this as RemedialPackage, _$identity);

  /// Serializes this RemedialPackage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemedialPackage&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&const DeepCollectionEquality().equals(other.exercises, exercises)&&(identical(other.summary, summary) || other.summary == summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,moduleId,const DeepCollectionEquality().hash(exercises),summary);

@override
String toString() {
  return 'RemedialPackage(moduleId: $moduleId, exercises: $exercises, summary: $summary)';
}


}

/// @nodoc
abstract mixin class $RemedialPackageCopyWith<$Res>  {
  factory $RemedialPackageCopyWith(RemedialPackage value, $Res Function(RemedialPackage) _then) = _$RemedialPackageCopyWithImpl;
@useResult
$Res call({
 String moduleId, List<String> exercises, String summary
});




}
/// @nodoc
class _$RemedialPackageCopyWithImpl<$Res>
    implements $RemedialPackageCopyWith<$Res> {
  _$RemedialPackageCopyWithImpl(this._self, this._then);

  final RemedialPackage _self;
  final $Res Function(RemedialPackage) _then;

/// Create a copy of RemedialPackage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? moduleId = null,Object? exercises = null,Object? summary = null,}) {
  return _then(_self.copyWith(
moduleId: null == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as String,exercises: null == exercises ? _self.exercises : exercises // ignore: cast_nullable_to_non_nullable
as List<String>,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RemedialPackage].
extension RemedialPackagePatterns on RemedialPackage {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RemedialPackage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RemedialPackage() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RemedialPackage value)  $default,){
final _that = this;
switch (_that) {
case _RemedialPackage():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RemedialPackage value)?  $default,){
final _that = this;
switch (_that) {
case _RemedialPackage() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String moduleId,  List<String> exercises,  String summary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RemedialPackage() when $default != null:
return $default(_that.moduleId,_that.exercises,_that.summary);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String moduleId,  List<String> exercises,  String summary)  $default,) {final _that = this;
switch (_that) {
case _RemedialPackage():
return $default(_that.moduleId,_that.exercises,_that.summary);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String moduleId,  List<String> exercises,  String summary)?  $default,) {final _that = this;
switch (_that) {
case _RemedialPackage() when $default != null:
return $default(_that.moduleId,_that.exercises,_that.summary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RemedialPackage implements RemedialPackage {
  const _RemedialPackage({required this.moduleId, final  List<String> exercises = const <String>[], this.summary = ''}): _exercises = exercises;
  factory _RemedialPackage.fromJson(Map<String, dynamic> json) => _$RemedialPackageFromJson(json);

@override final  String moduleId;
 final  List<String> _exercises;
@override@JsonKey() List<String> get exercises {
  if (_exercises is EqualUnmodifiableListView) return _exercises;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_exercises);
}

@override@JsonKey() final  String summary;

/// Create a copy of RemedialPackage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemedialPackageCopyWith<_RemedialPackage> get copyWith => __$RemedialPackageCopyWithImpl<_RemedialPackage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RemedialPackageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemedialPackage&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&const DeepCollectionEquality().equals(other._exercises, _exercises)&&(identical(other.summary, summary) || other.summary == summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,moduleId,const DeepCollectionEquality().hash(_exercises),summary);

@override
String toString() {
  return 'RemedialPackage(moduleId: $moduleId, exercises: $exercises, summary: $summary)';
}


}

/// @nodoc
abstract mixin class _$RemedialPackageCopyWith<$Res> implements $RemedialPackageCopyWith<$Res> {
  factory _$RemedialPackageCopyWith(_RemedialPackage value, $Res Function(_RemedialPackage) _then) = __$RemedialPackageCopyWithImpl;
@override @useResult
$Res call({
 String moduleId, List<String> exercises, String summary
});




}
/// @nodoc
class __$RemedialPackageCopyWithImpl<$Res>
    implements _$RemedialPackageCopyWith<$Res> {
  __$RemedialPackageCopyWithImpl(this._self, this._then);

  final _RemedialPackage _self;
  final $Res Function(_RemedialPackage) _then;

/// Create a copy of RemedialPackage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? moduleId = null,Object? exercises = null,Object? summary = null,}) {
  return _then(_RemedialPackage(
moduleId: null == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as String,exercises: null == exercises ? _self._exercises : exercises // ignore: cast_nullable_to_non_nullable
as List<String>,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MasteryCheckResult {

 String get moduleId; int get total; int get correct; double get score; bool get passed;
/// Create a copy of MasteryCheckResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MasteryCheckResultCopyWith<MasteryCheckResult> get copyWith => _$MasteryCheckResultCopyWithImpl<MasteryCheckResult>(this as MasteryCheckResult, _$identity);

  /// Serializes this MasteryCheckResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MasteryCheckResult&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&(identical(other.total, total) || other.total == total)&&(identical(other.correct, correct) || other.correct == correct)&&(identical(other.score, score) || other.score == score)&&(identical(other.passed, passed) || other.passed == passed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,moduleId,total,correct,score,passed);

@override
String toString() {
  return 'MasteryCheckResult(moduleId: $moduleId, total: $total, correct: $correct, score: $score, passed: $passed)';
}


}

/// @nodoc
abstract mixin class $MasteryCheckResultCopyWith<$Res>  {
  factory $MasteryCheckResultCopyWith(MasteryCheckResult value, $Res Function(MasteryCheckResult) _then) = _$MasteryCheckResultCopyWithImpl;
@useResult
$Res call({
 String moduleId, int total, int correct, double score, bool passed
});




}
/// @nodoc
class _$MasteryCheckResultCopyWithImpl<$Res>
    implements $MasteryCheckResultCopyWith<$Res> {
  _$MasteryCheckResultCopyWithImpl(this._self, this._then);

  final MasteryCheckResult _self;
  final $Res Function(MasteryCheckResult) _then;

/// Create a copy of MasteryCheckResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? moduleId = null,Object? total = null,Object? correct = null,Object? score = null,Object? passed = null,}) {
  return _then(_self.copyWith(
moduleId: null == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,correct: null == correct ? _self.correct : correct // ignore: cast_nullable_to_non_nullable
as int,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double,passed: null == passed ? _self.passed : passed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MasteryCheckResult].
extension MasteryCheckResultPatterns on MasteryCheckResult {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MasteryCheckResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MasteryCheckResult() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MasteryCheckResult value)  $default,){
final _that = this;
switch (_that) {
case _MasteryCheckResult():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MasteryCheckResult value)?  $default,){
final _that = this;
switch (_that) {
case _MasteryCheckResult() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String moduleId,  int total,  int correct,  double score,  bool passed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MasteryCheckResult() when $default != null:
return $default(_that.moduleId,_that.total,_that.correct,_that.score,_that.passed);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String moduleId,  int total,  int correct,  double score,  bool passed)  $default,) {final _that = this;
switch (_that) {
case _MasteryCheckResult():
return $default(_that.moduleId,_that.total,_that.correct,_that.score,_that.passed);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String moduleId,  int total,  int correct,  double score,  bool passed)?  $default,) {final _that = this;
switch (_that) {
case _MasteryCheckResult() when $default != null:
return $default(_that.moduleId,_that.total,_that.correct,_that.score,_that.passed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MasteryCheckResult implements MasteryCheckResult {
  const _MasteryCheckResult({required this.moduleId, required this.total, required this.correct, required this.score, required this.passed});
  factory _MasteryCheckResult.fromJson(Map<String, dynamic> json) => _$MasteryCheckResultFromJson(json);

@override final  String moduleId;
@override final  int total;
@override final  int correct;
@override final  double score;
@override final  bool passed;

/// Create a copy of MasteryCheckResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MasteryCheckResultCopyWith<_MasteryCheckResult> get copyWith => __$MasteryCheckResultCopyWithImpl<_MasteryCheckResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MasteryCheckResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MasteryCheckResult&&(identical(other.moduleId, moduleId) || other.moduleId == moduleId)&&(identical(other.total, total) || other.total == total)&&(identical(other.correct, correct) || other.correct == correct)&&(identical(other.score, score) || other.score == score)&&(identical(other.passed, passed) || other.passed == passed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,moduleId,total,correct,score,passed);

@override
String toString() {
  return 'MasteryCheckResult(moduleId: $moduleId, total: $total, correct: $correct, score: $score, passed: $passed)';
}


}

/// @nodoc
abstract mixin class _$MasteryCheckResultCopyWith<$Res> implements $MasteryCheckResultCopyWith<$Res> {
  factory _$MasteryCheckResultCopyWith(_MasteryCheckResult value, $Res Function(_MasteryCheckResult) _then) = __$MasteryCheckResultCopyWithImpl;
@override @useResult
$Res call({
 String moduleId, int total, int correct, double score, bool passed
});




}
/// @nodoc
class __$MasteryCheckResultCopyWithImpl<$Res>
    implements _$MasteryCheckResultCopyWith<$Res> {
  __$MasteryCheckResultCopyWithImpl(this._self, this._then);

  final _MasteryCheckResult _self;
  final $Res Function(_MasteryCheckResult) _then;

/// Create a copy of MasteryCheckResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? moduleId = null,Object? total = null,Object? correct = null,Object? score = null,Object? passed = null,}) {
  return _then(_MasteryCheckResult(
moduleId: null == moduleId ? _self.moduleId : moduleId // ignore: cast_nullable_to_non_nullable
as String,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,correct: null == correct ? _self.correct : correct // ignore: cast_nullable_to_non_nullable
as int,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double,passed: null == passed ? _self.passed : passed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
