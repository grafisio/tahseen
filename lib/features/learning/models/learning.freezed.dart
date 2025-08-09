// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'learning.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LearningModule {

 String get id; Skill get skill; CEFR get cefr; String get title; List<String> get prerequisites; List<String> get activities;
/// Create a copy of LearningModule
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LearningModuleCopyWith<LearningModule> get copyWith => _$LearningModuleCopyWithImpl<LearningModule>(this as LearningModule, _$identity);

  /// Serializes this LearningModule to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LearningModule&&(identical(other.id, id) || other.id == id)&&(identical(other.skill, skill) || other.skill == skill)&&(identical(other.cefr, cefr) || other.cefr == cefr)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.prerequisites, prerequisites)&&const DeepCollectionEquality().equals(other.activities, activities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,skill,cefr,title,const DeepCollectionEquality().hash(prerequisites),const DeepCollectionEquality().hash(activities));

@override
String toString() {
  return 'LearningModule(id: $id, skill: $skill, cefr: $cefr, title: $title, prerequisites: $prerequisites, activities: $activities)';
}


}

/// @nodoc
abstract mixin class $LearningModuleCopyWith<$Res>  {
  factory $LearningModuleCopyWith(LearningModule value, $Res Function(LearningModule) _then) = _$LearningModuleCopyWithImpl;
@useResult
$Res call({
 String id, Skill skill, CEFR cefr, String title, List<String> prerequisites, List<String> activities
});




}
/// @nodoc
class _$LearningModuleCopyWithImpl<$Res>
    implements $LearningModuleCopyWith<$Res> {
  _$LearningModuleCopyWithImpl(this._self, this._then);

  final LearningModule _self;
  final $Res Function(LearningModule) _then;

/// Create a copy of LearningModule
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? skill = null,Object? cefr = null,Object? title = null,Object? prerequisites = null,Object? activities = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,skill: null == skill ? _self.skill : skill // ignore: cast_nullable_to_non_nullable
as Skill,cefr: null == cefr ? _self.cefr : cefr // ignore: cast_nullable_to_non_nullable
as CEFR,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,prerequisites: null == prerequisites ? _self.prerequisites : prerequisites // ignore: cast_nullable_to_non_nullable
as List<String>,activities: null == activities ? _self.activities : activities // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [LearningModule].
extension LearningModulePatterns on LearningModule {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LearningModule value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LearningModule() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LearningModule value)  $default,){
final _that = this;
switch (_that) {
case _LearningModule():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LearningModule value)?  $default,){
final _that = this;
switch (_that) {
case _LearningModule() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  Skill skill,  CEFR cefr,  String title,  List<String> prerequisites,  List<String> activities)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LearningModule() when $default != null:
return $default(_that.id,_that.skill,_that.cefr,_that.title,_that.prerequisites,_that.activities);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  Skill skill,  CEFR cefr,  String title,  List<String> prerequisites,  List<String> activities)  $default,) {final _that = this;
switch (_that) {
case _LearningModule():
return $default(_that.id,_that.skill,_that.cefr,_that.title,_that.prerequisites,_that.activities);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  Skill skill,  CEFR cefr,  String title,  List<String> prerequisites,  List<String> activities)?  $default,) {final _that = this;
switch (_that) {
case _LearningModule() when $default != null:
return $default(_that.id,_that.skill,_that.cefr,_that.title,_that.prerequisites,_that.activities);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LearningModule implements LearningModule {
  const _LearningModule({required this.id, required this.skill, required this.cefr, required this.title, final  List<String> prerequisites = const <String>[], final  List<String> activities = const <String>[]}): _prerequisites = prerequisites,_activities = activities;
  factory _LearningModule.fromJson(Map<String, dynamic> json) => _$LearningModuleFromJson(json);

@override final  String id;
@override final  Skill skill;
@override final  CEFR cefr;
@override final  String title;
 final  List<String> _prerequisites;
@override@JsonKey() List<String> get prerequisites {
  if (_prerequisites is EqualUnmodifiableListView) return _prerequisites;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_prerequisites);
}

 final  List<String> _activities;
@override@JsonKey() List<String> get activities {
  if (_activities is EqualUnmodifiableListView) return _activities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_activities);
}


/// Create a copy of LearningModule
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LearningModuleCopyWith<_LearningModule> get copyWith => __$LearningModuleCopyWithImpl<_LearningModule>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LearningModuleToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LearningModule&&(identical(other.id, id) || other.id == id)&&(identical(other.skill, skill) || other.skill == skill)&&(identical(other.cefr, cefr) || other.cefr == cefr)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._prerequisites, _prerequisites)&&const DeepCollectionEquality().equals(other._activities, _activities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,skill,cefr,title,const DeepCollectionEquality().hash(_prerequisites),const DeepCollectionEquality().hash(_activities));

@override
String toString() {
  return 'LearningModule(id: $id, skill: $skill, cefr: $cefr, title: $title, prerequisites: $prerequisites, activities: $activities)';
}


}

/// @nodoc
abstract mixin class _$LearningModuleCopyWith<$Res> implements $LearningModuleCopyWith<$Res> {
  factory _$LearningModuleCopyWith(_LearningModule value, $Res Function(_LearningModule) _then) = __$LearningModuleCopyWithImpl;
@override @useResult
$Res call({
 String id, Skill skill, CEFR cefr, String title, List<String> prerequisites, List<String> activities
});




}
/// @nodoc
class __$LearningModuleCopyWithImpl<$Res>
    implements _$LearningModuleCopyWith<$Res> {
  __$LearningModuleCopyWithImpl(this._self, this._then);

  final _LearningModule _self;
  final $Res Function(_LearningModule) _then;

/// Create a copy of LearningModule
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? skill = null,Object? cefr = null,Object? title = null,Object? prerequisites = null,Object? activities = null,}) {
  return _then(_LearningModule(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,skill: null == skill ? _self.skill : skill // ignore: cast_nullable_to_non_nullable
as Skill,cefr: null == cefr ? _self.cefr : cefr // ignore: cast_nullable_to_non_nullable
as CEFR,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,prerequisites: null == prerequisites ? _self._prerequisites : prerequisites // ignore: cast_nullable_to_non_nullable
as List<String>,activities: null == activities ? _self._activities : activities // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$LearningPath {

 String get id;@JsonKey(toJson: _modulesToJson) List<LearningModule> get modules; List<String> get lockedModules;
/// Create a copy of LearningPath
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LearningPathCopyWith<LearningPath> get copyWith => _$LearningPathCopyWithImpl<LearningPath>(this as LearningPath, _$identity);

  /// Serializes this LearningPath to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LearningPath&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.modules, modules)&&const DeepCollectionEquality().equals(other.lockedModules, lockedModules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(modules),const DeepCollectionEquality().hash(lockedModules));

@override
String toString() {
  return 'LearningPath(id: $id, modules: $modules, lockedModules: $lockedModules)';
}


}

/// @nodoc
abstract mixin class $LearningPathCopyWith<$Res>  {
  factory $LearningPathCopyWith(LearningPath value, $Res Function(LearningPath) _then) = _$LearningPathCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(toJson: _modulesToJson) List<LearningModule> modules, List<String> lockedModules
});




}
/// @nodoc
class _$LearningPathCopyWithImpl<$Res>
    implements $LearningPathCopyWith<$Res> {
  _$LearningPathCopyWithImpl(this._self, this._then);

  final LearningPath _self;
  final $Res Function(LearningPath) _then;

/// Create a copy of LearningPath
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? modules = null,Object? lockedModules = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,modules: null == modules ? _self.modules : modules // ignore: cast_nullable_to_non_nullable
as List<LearningModule>,lockedModules: null == lockedModules ? _self.lockedModules : lockedModules // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [LearningPath].
extension LearningPathPatterns on LearningPath {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LearningPath value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LearningPath() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LearningPath value)  $default,){
final _that = this;
switch (_that) {
case _LearningPath():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LearningPath value)?  $default,){
final _that = this;
switch (_that) {
case _LearningPath() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(toJson: _modulesToJson)  List<LearningModule> modules,  List<String> lockedModules)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LearningPath() when $default != null:
return $default(_that.id,_that.modules,_that.lockedModules);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(toJson: _modulesToJson)  List<LearningModule> modules,  List<String> lockedModules)  $default,) {final _that = this;
switch (_that) {
case _LearningPath():
return $default(_that.id,_that.modules,_that.lockedModules);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(toJson: _modulesToJson)  List<LearningModule> modules,  List<String> lockedModules)?  $default,) {final _that = this;
switch (_that) {
case _LearningPath() when $default != null:
return $default(_that.id,_that.modules,_that.lockedModules);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LearningPath implements LearningPath {
  const _LearningPath({required this.id, @JsonKey(toJson: _modulesToJson) final  List<LearningModule> modules = const <LearningModule>[], final  List<String> lockedModules = const <String>[]}): _modules = modules,_lockedModules = lockedModules;
  factory _LearningPath.fromJson(Map<String, dynamic> json) => _$LearningPathFromJson(json);

@override final  String id;
 final  List<LearningModule> _modules;
@override@JsonKey(toJson: _modulesToJson) List<LearningModule> get modules {
  if (_modules is EqualUnmodifiableListView) return _modules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_modules);
}

 final  List<String> _lockedModules;
@override@JsonKey() List<String> get lockedModules {
  if (_lockedModules is EqualUnmodifiableListView) return _lockedModules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lockedModules);
}


/// Create a copy of LearningPath
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LearningPathCopyWith<_LearningPath> get copyWith => __$LearningPathCopyWithImpl<_LearningPath>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LearningPathToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LearningPath&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._modules, _modules)&&const DeepCollectionEquality().equals(other._lockedModules, _lockedModules));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_modules),const DeepCollectionEquality().hash(_lockedModules));

@override
String toString() {
  return 'LearningPath(id: $id, modules: $modules, lockedModules: $lockedModules)';
}


}

/// @nodoc
abstract mixin class _$LearningPathCopyWith<$Res> implements $LearningPathCopyWith<$Res> {
  factory _$LearningPathCopyWith(_LearningPath value, $Res Function(_LearningPath) _then) = __$LearningPathCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(toJson: _modulesToJson) List<LearningModule> modules, List<String> lockedModules
});




}
/// @nodoc
class __$LearningPathCopyWithImpl<$Res>
    implements _$LearningPathCopyWith<$Res> {
  __$LearningPathCopyWithImpl(this._self, this._then);

  final _LearningPath _self;
  final $Res Function(_LearningPath) _then;

/// Create a copy of LearningPath
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? modules = null,Object? lockedModules = null,}) {
  return _then(_LearningPath(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,modules: null == modules ? _self._modules : modules // ignore: cast_nullable_to_non_nullable
as List<LearningModule>,lockedModules: null == lockedModules ? _self._lockedModules : lockedModules // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
