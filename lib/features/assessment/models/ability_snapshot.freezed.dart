// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ability_snapshot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AbilitySnapshot {

 List<AbilityEstimate> get estimates;
/// Create a copy of AbilitySnapshot
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AbilitySnapshotCopyWith<AbilitySnapshot> get copyWith => _$AbilitySnapshotCopyWithImpl<AbilitySnapshot>(this as AbilitySnapshot, _$identity);

  /// Serializes this AbilitySnapshot to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AbilitySnapshot&&const DeepCollectionEquality().equals(other.estimates, estimates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(estimates));

@override
String toString() {
  return 'AbilitySnapshot(estimates: $estimates)';
}


}

/// @nodoc
abstract mixin class $AbilitySnapshotCopyWith<$Res>  {
  factory $AbilitySnapshotCopyWith(AbilitySnapshot value, $Res Function(AbilitySnapshot) _then) = _$AbilitySnapshotCopyWithImpl;
@useResult
$Res call({
 List<AbilityEstimate> estimates
});




}
/// @nodoc
class _$AbilitySnapshotCopyWithImpl<$Res>
    implements $AbilitySnapshotCopyWith<$Res> {
  _$AbilitySnapshotCopyWithImpl(this._self, this._then);

  final AbilitySnapshot _self;
  final $Res Function(AbilitySnapshot) _then;

/// Create a copy of AbilitySnapshot
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? estimates = null,}) {
  return _then(_self.copyWith(
estimates: null == estimates ? _self.estimates : estimates // ignore: cast_nullable_to_non_nullable
as List<AbilityEstimate>,
  ));
}

}


/// Adds pattern-matching-related methods to [AbilitySnapshot].
extension AbilitySnapshotPatterns on AbilitySnapshot {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AbilitySnapshot value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AbilitySnapshot() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AbilitySnapshot value)  $default,){
final _that = this;
switch (_that) {
case _AbilitySnapshot():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AbilitySnapshot value)?  $default,){
final _that = this;
switch (_that) {
case _AbilitySnapshot() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AbilityEstimate> estimates)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AbilitySnapshot() when $default != null:
return $default(_that.estimates);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AbilityEstimate> estimates)  $default,) {final _that = this;
switch (_that) {
case _AbilitySnapshot():
return $default(_that.estimates);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AbilityEstimate> estimates)?  $default,) {final _that = this;
switch (_that) {
case _AbilitySnapshot() when $default != null:
return $default(_that.estimates);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AbilitySnapshot implements AbilitySnapshot {
  const _AbilitySnapshot({final  List<AbilityEstimate> estimates = const <AbilityEstimate>[]}): _estimates = estimates;
  factory _AbilitySnapshot.fromJson(Map<String, dynamic> json) => _$AbilitySnapshotFromJson(json);

 final  List<AbilityEstimate> _estimates;
@override@JsonKey() List<AbilityEstimate> get estimates {
  if (_estimates is EqualUnmodifiableListView) return _estimates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_estimates);
}


/// Create a copy of AbilitySnapshot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AbilitySnapshotCopyWith<_AbilitySnapshot> get copyWith => __$AbilitySnapshotCopyWithImpl<_AbilitySnapshot>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AbilitySnapshotToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AbilitySnapshot&&const DeepCollectionEquality().equals(other._estimates, _estimates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_estimates));

@override
String toString() {
  return 'AbilitySnapshot(estimates: $estimates)';
}


}

/// @nodoc
abstract mixin class _$AbilitySnapshotCopyWith<$Res> implements $AbilitySnapshotCopyWith<$Res> {
  factory _$AbilitySnapshotCopyWith(_AbilitySnapshot value, $Res Function(_AbilitySnapshot) _then) = __$AbilitySnapshotCopyWithImpl;
@override @useResult
$Res call({
 List<AbilityEstimate> estimates
});




}
/// @nodoc
class __$AbilitySnapshotCopyWithImpl<$Res>
    implements _$AbilitySnapshotCopyWith<$Res> {
  __$AbilitySnapshotCopyWithImpl(this._self, this._then);

  final _AbilitySnapshot _self;
  final $Res Function(_AbilitySnapshot) _then;

/// Create a copy of AbilitySnapshot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? estimates = null,}) {
  return _then(_AbilitySnapshot(
estimates: null == estimates ? _self._estimates : estimates // ignore: cast_nullable_to_non_nullable
as List<AbilityEstimate>,
  ));
}


}

// dart format on
