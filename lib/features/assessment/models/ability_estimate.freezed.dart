// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ability_estimate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AbilityEstimate {

 Skill get skill; double get theta; double get se; DateTime get updatedAt;
/// Create a copy of AbilityEstimate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AbilityEstimateCopyWith<AbilityEstimate> get copyWith => _$AbilityEstimateCopyWithImpl<AbilityEstimate>(this as AbilityEstimate, _$identity);

  /// Serializes this AbilityEstimate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AbilityEstimate&&(identical(other.skill, skill) || other.skill == skill)&&(identical(other.theta, theta) || other.theta == theta)&&(identical(other.se, se) || other.se == se)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,skill,theta,se,updatedAt);

@override
String toString() {
  return 'AbilityEstimate(skill: $skill, theta: $theta, se: $se, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $AbilityEstimateCopyWith<$Res>  {
  factory $AbilityEstimateCopyWith(AbilityEstimate value, $Res Function(AbilityEstimate) _then) = _$AbilityEstimateCopyWithImpl;
@useResult
$Res call({
 Skill skill, double theta, double se, DateTime updatedAt
});




}
/// @nodoc
class _$AbilityEstimateCopyWithImpl<$Res>
    implements $AbilityEstimateCopyWith<$Res> {
  _$AbilityEstimateCopyWithImpl(this._self, this._then);

  final AbilityEstimate _self;
  final $Res Function(AbilityEstimate) _then;

/// Create a copy of AbilityEstimate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? skill = null,Object? theta = null,Object? se = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
skill: null == skill ? _self.skill : skill // ignore: cast_nullable_to_non_nullable
as Skill,theta: null == theta ? _self.theta : theta // ignore: cast_nullable_to_non_nullable
as double,se: null == se ? _self.se : se // ignore: cast_nullable_to_non_nullable
as double,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [AbilityEstimate].
extension AbilityEstimatePatterns on AbilityEstimate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AbilityEstimate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AbilityEstimate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AbilityEstimate value)  $default,){
final _that = this;
switch (_that) {
case _AbilityEstimate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AbilityEstimate value)?  $default,){
final _that = this;
switch (_that) {
case _AbilityEstimate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Skill skill,  double theta,  double se,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AbilityEstimate() when $default != null:
return $default(_that.skill,_that.theta,_that.se,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Skill skill,  double theta,  double se,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _AbilityEstimate():
return $default(_that.skill,_that.theta,_that.se,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Skill skill,  double theta,  double se,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _AbilityEstimate() when $default != null:
return $default(_that.skill,_that.theta,_that.se,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AbilityEstimate implements AbilityEstimate {
  const _AbilityEstimate({required this.skill, required this.theta, required this.se, required this.updatedAt});
  factory _AbilityEstimate.fromJson(Map<String, dynamic> json) => _$AbilityEstimateFromJson(json);

@override final  Skill skill;
@override final  double theta;
@override final  double se;
@override final  DateTime updatedAt;

/// Create a copy of AbilityEstimate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AbilityEstimateCopyWith<_AbilityEstimate> get copyWith => __$AbilityEstimateCopyWithImpl<_AbilityEstimate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AbilityEstimateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AbilityEstimate&&(identical(other.skill, skill) || other.skill == skill)&&(identical(other.theta, theta) || other.theta == theta)&&(identical(other.se, se) || other.se == se)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,skill,theta,se,updatedAt);

@override
String toString() {
  return 'AbilityEstimate(skill: $skill, theta: $theta, se: $se, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$AbilityEstimateCopyWith<$Res> implements $AbilityEstimateCopyWith<$Res> {
  factory _$AbilityEstimateCopyWith(_AbilityEstimate value, $Res Function(_AbilityEstimate) _then) = __$AbilityEstimateCopyWithImpl;
@override @useResult
$Res call({
 Skill skill, double theta, double se, DateTime updatedAt
});




}
/// @nodoc
class __$AbilityEstimateCopyWithImpl<$Res>
    implements _$AbilityEstimateCopyWith<$Res> {
  __$AbilityEstimateCopyWithImpl(this._self, this._then);

  final _AbilityEstimate _self;
  final $Res Function(_AbilityEstimate) _then;

/// Create a copy of AbilityEstimate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? skill = null,Object? theta = null,Object? se = null,Object? updatedAt = null,}) {
  return _then(_AbilityEstimate(
skill: null == skill ? _self.skill : skill // ignore: cast_nullable_to_non_nullable
as Skill,theta: null == theta ? _self.theta : theta // ignore: cast_nullable_to_non_nullable
as double,se: null == se ? _self.se : se // ignore: cast_nullable_to_non_nullable
as double,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
