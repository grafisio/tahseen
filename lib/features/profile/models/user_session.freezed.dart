// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserSession {

 String get userId; String get displayName; bool get isOnboardingCompleted; String? get currentPathId;
/// Create a copy of UserSession
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSessionCopyWith<UserSession> get copyWith => _$UserSessionCopyWithImpl<UserSession>(this as UserSession, _$identity);

  /// Serializes this UserSession to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSession&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.isOnboardingCompleted, isOnboardingCompleted) || other.isOnboardingCompleted == isOnboardingCompleted)&&(identical(other.currentPathId, currentPathId) || other.currentPathId == currentPathId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,displayName,isOnboardingCompleted,currentPathId);

@override
String toString() {
  return 'UserSession(userId: $userId, displayName: $displayName, isOnboardingCompleted: $isOnboardingCompleted, currentPathId: $currentPathId)';
}


}

/// @nodoc
abstract mixin class $UserSessionCopyWith<$Res>  {
  factory $UserSessionCopyWith(UserSession value, $Res Function(UserSession) _then) = _$UserSessionCopyWithImpl;
@useResult
$Res call({
 String userId, String displayName, bool isOnboardingCompleted, String? currentPathId
});




}
/// @nodoc
class _$UserSessionCopyWithImpl<$Res>
    implements $UserSessionCopyWith<$Res> {
  _$UserSessionCopyWithImpl(this._self, this._then);

  final UserSession _self;
  final $Res Function(UserSession) _then;

/// Create a copy of UserSession
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? displayName = null,Object? isOnboardingCompleted = null,Object? currentPathId = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,isOnboardingCompleted: null == isOnboardingCompleted ? _self.isOnboardingCompleted : isOnboardingCompleted // ignore: cast_nullable_to_non_nullable
as bool,currentPathId: freezed == currentPathId ? _self.currentPathId : currentPathId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserSession].
extension UserSessionPatterns on UserSession {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserSession value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserSession() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserSession value)  $default,){
final _that = this;
switch (_that) {
case _UserSession():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserSession value)?  $default,){
final _that = this;
switch (_that) {
case _UserSession() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String displayName,  bool isOnboardingCompleted,  String? currentPathId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserSession() when $default != null:
return $default(_that.userId,_that.displayName,_that.isOnboardingCompleted,_that.currentPathId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String displayName,  bool isOnboardingCompleted,  String? currentPathId)  $default,) {final _that = this;
switch (_that) {
case _UserSession():
return $default(_that.userId,_that.displayName,_that.isOnboardingCompleted,_that.currentPathId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String displayName,  bool isOnboardingCompleted,  String? currentPathId)?  $default,) {final _that = this;
switch (_that) {
case _UserSession() when $default != null:
return $default(_that.userId,_that.displayName,_that.isOnboardingCompleted,_that.currentPathId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserSession implements UserSession {
  const _UserSession({required this.userId, required this.displayName, this.isOnboardingCompleted = false, this.currentPathId});
  factory _UserSession.fromJson(Map<String, dynamic> json) => _$UserSessionFromJson(json);

@override final  String userId;
@override final  String displayName;
@override@JsonKey() final  bool isOnboardingCompleted;
@override final  String? currentPathId;

/// Create a copy of UserSession
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserSessionCopyWith<_UserSession> get copyWith => __$UserSessionCopyWithImpl<_UserSession>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserSessionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserSession&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.isOnboardingCompleted, isOnboardingCompleted) || other.isOnboardingCompleted == isOnboardingCompleted)&&(identical(other.currentPathId, currentPathId) || other.currentPathId == currentPathId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,displayName,isOnboardingCompleted,currentPathId);

@override
String toString() {
  return 'UserSession(userId: $userId, displayName: $displayName, isOnboardingCompleted: $isOnboardingCompleted, currentPathId: $currentPathId)';
}


}

/// @nodoc
abstract mixin class _$UserSessionCopyWith<$Res> implements $UserSessionCopyWith<$Res> {
  factory _$UserSessionCopyWith(_UserSession value, $Res Function(_UserSession) _then) = __$UserSessionCopyWithImpl;
@override @useResult
$Res call({
 String userId, String displayName, bool isOnboardingCompleted, String? currentPathId
});




}
/// @nodoc
class __$UserSessionCopyWithImpl<$Res>
    implements _$UserSessionCopyWith<$Res> {
  __$UserSessionCopyWithImpl(this._self, this._then);

  final _UserSession _self;
  final $Res Function(_UserSession) _then;

/// Create a copy of UserSession
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? displayName = null,Object? isOnboardingCompleted = null,Object? currentPathId = freezed,}) {
  return _then(_UserSession(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,isOnboardingCompleted: null == isOnboardingCompleted ? _self.isOnboardingCompleted : isOnboardingCompleted // ignore: cast_nullable_to_non_nullable
as bool,currentPathId: freezed == currentPathId ? _self.currentPathId : currentPathId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
