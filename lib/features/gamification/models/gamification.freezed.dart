// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gamification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GamificationState {

 int get xp; List<Badge> get badges; int get currentStreakDays; DateTime? get lastActiveAt;
/// Create a copy of GamificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GamificationStateCopyWith<GamificationState> get copyWith => _$GamificationStateCopyWithImpl<GamificationState>(this as GamificationState, _$identity);

  /// Serializes this GamificationState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GamificationState&&(identical(other.xp, xp) || other.xp == xp)&&const DeepCollectionEquality().equals(other.badges, badges)&&(identical(other.currentStreakDays, currentStreakDays) || other.currentStreakDays == currentStreakDays)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,xp,const DeepCollectionEquality().hash(badges),currentStreakDays,lastActiveAt);

@override
String toString() {
  return 'GamificationState(xp: $xp, badges: $badges, currentStreakDays: $currentStreakDays, lastActiveAt: $lastActiveAt)';
}


}

/// @nodoc
abstract mixin class $GamificationStateCopyWith<$Res>  {
  factory $GamificationStateCopyWith(GamificationState value, $Res Function(GamificationState) _then) = _$GamificationStateCopyWithImpl;
@useResult
$Res call({
 int xp, List<Badge> badges, int currentStreakDays, DateTime? lastActiveAt
});




}
/// @nodoc
class _$GamificationStateCopyWithImpl<$Res>
    implements $GamificationStateCopyWith<$Res> {
  _$GamificationStateCopyWithImpl(this._self, this._then);

  final GamificationState _self;
  final $Res Function(GamificationState) _then;

/// Create a copy of GamificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? xp = null,Object? badges = null,Object? currentStreakDays = null,Object? lastActiveAt = freezed,}) {
  return _then(_self.copyWith(
xp: null == xp ? _self.xp : xp // ignore: cast_nullable_to_non_nullable
as int,badges: null == badges ? _self.badges : badges // ignore: cast_nullable_to_non_nullable
as List<Badge>,currentStreakDays: null == currentStreakDays ? _self.currentStreakDays : currentStreakDays // ignore: cast_nullable_to_non_nullable
as int,lastActiveAt: freezed == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [GamificationState].
extension GamificationStatePatterns on GamificationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GamificationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GamificationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GamificationState value)  $default,){
final _that = this;
switch (_that) {
case _GamificationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GamificationState value)?  $default,){
final _that = this;
switch (_that) {
case _GamificationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int xp,  List<Badge> badges,  int currentStreakDays,  DateTime? lastActiveAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GamificationState() when $default != null:
return $default(_that.xp,_that.badges,_that.currentStreakDays,_that.lastActiveAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int xp,  List<Badge> badges,  int currentStreakDays,  DateTime? lastActiveAt)  $default,) {final _that = this;
switch (_that) {
case _GamificationState():
return $default(_that.xp,_that.badges,_that.currentStreakDays,_that.lastActiveAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int xp,  List<Badge> badges,  int currentStreakDays,  DateTime? lastActiveAt)?  $default,) {final _that = this;
switch (_that) {
case _GamificationState() when $default != null:
return $default(_that.xp,_that.badges,_that.currentStreakDays,_that.lastActiveAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GamificationState implements GamificationState {
  const _GamificationState({this.xp = 0, final  List<Badge> badges = const <Badge>[], this.currentStreakDays = 0, this.lastActiveAt}): _badges = badges;
  factory _GamificationState.fromJson(Map<String, dynamic> json) => _$GamificationStateFromJson(json);

@override@JsonKey() final  int xp;
 final  List<Badge> _badges;
@override@JsonKey() List<Badge> get badges {
  if (_badges is EqualUnmodifiableListView) return _badges;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_badges);
}

@override@JsonKey() final  int currentStreakDays;
@override final  DateTime? lastActiveAt;

/// Create a copy of GamificationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GamificationStateCopyWith<_GamificationState> get copyWith => __$GamificationStateCopyWithImpl<_GamificationState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GamificationStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GamificationState&&(identical(other.xp, xp) || other.xp == xp)&&const DeepCollectionEquality().equals(other._badges, _badges)&&(identical(other.currentStreakDays, currentStreakDays) || other.currentStreakDays == currentStreakDays)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,xp,const DeepCollectionEquality().hash(_badges),currentStreakDays,lastActiveAt);

@override
String toString() {
  return 'GamificationState(xp: $xp, badges: $badges, currentStreakDays: $currentStreakDays, lastActiveAt: $lastActiveAt)';
}


}

/// @nodoc
abstract mixin class _$GamificationStateCopyWith<$Res> implements $GamificationStateCopyWith<$Res> {
  factory _$GamificationStateCopyWith(_GamificationState value, $Res Function(_GamificationState) _then) = __$GamificationStateCopyWithImpl;
@override @useResult
$Res call({
 int xp, List<Badge> badges, int currentStreakDays, DateTime? lastActiveAt
});




}
/// @nodoc
class __$GamificationStateCopyWithImpl<$Res>
    implements _$GamificationStateCopyWith<$Res> {
  __$GamificationStateCopyWithImpl(this._self, this._then);

  final _GamificationState _self;
  final $Res Function(_GamificationState) _then;

/// Create a copy of GamificationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? xp = null,Object? badges = null,Object? currentStreakDays = null,Object? lastActiveAt = freezed,}) {
  return _then(_GamificationState(
xp: null == xp ? _self.xp : xp // ignore: cast_nullable_to_non_nullable
as int,badges: null == badges ? _self._badges : badges // ignore: cast_nullable_to_non_nullable
as List<Badge>,currentStreakDays: null == currentStreakDays ? _self.currentStreakDays : currentStreakDays // ignore: cast_nullable_to_non_nullable
as int,lastActiveAt: freezed == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
