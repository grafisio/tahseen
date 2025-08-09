// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IrtParam {

 double get a; double get b; double? get c;
/// Create a copy of IrtParam
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IrtParamCopyWith<IrtParam> get copyWith => _$IrtParamCopyWithImpl<IrtParam>(this as IrtParam, _$identity);

  /// Serializes this IrtParam to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IrtParam&&(identical(other.a, a) || other.a == a)&&(identical(other.b, b) || other.b == b)&&(identical(other.c, c) || other.c == c));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,a,b,c);

@override
String toString() {
  return 'IrtParam(a: $a, b: $b, c: $c)';
}


}

/// @nodoc
abstract mixin class $IrtParamCopyWith<$Res>  {
  factory $IrtParamCopyWith(IrtParam value, $Res Function(IrtParam) _then) = _$IrtParamCopyWithImpl;
@useResult
$Res call({
 double a, double b, double? c
});




}
/// @nodoc
class _$IrtParamCopyWithImpl<$Res>
    implements $IrtParamCopyWith<$Res> {
  _$IrtParamCopyWithImpl(this._self, this._then);

  final IrtParam _self;
  final $Res Function(IrtParam) _then;

/// Create a copy of IrtParam
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? a = null,Object? b = null,Object? c = freezed,}) {
  return _then(_self.copyWith(
a: null == a ? _self.a : a // ignore: cast_nullable_to_non_nullable
as double,b: null == b ? _self.b : b // ignore: cast_nullable_to_non_nullable
as double,c: freezed == c ? _self.c : c // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [IrtParam].
extension IrtParamPatterns on IrtParam {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IrtParam value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IrtParam() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IrtParam value)  $default,){
final _that = this;
switch (_that) {
case _IrtParam():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IrtParam value)?  $default,){
final _that = this;
switch (_that) {
case _IrtParam() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double a,  double b,  double? c)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IrtParam() when $default != null:
return $default(_that.a,_that.b,_that.c);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double a,  double b,  double? c)  $default,) {final _that = this;
switch (_that) {
case _IrtParam():
return $default(_that.a,_that.b,_that.c);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double a,  double b,  double? c)?  $default,) {final _that = this;
switch (_that) {
case _IrtParam() when $default != null:
return $default(_that.a,_that.b,_that.c);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _IrtParam implements IrtParam {
  const _IrtParam({required this.a, required this.b, this.c});
  factory _IrtParam.fromJson(Map<String, dynamic> json) => _$IrtParamFromJson(json);

@override final  double a;
@override final  double b;
@override final  double? c;

/// Create a copy of IrtParam
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IrtParamCopyWith<_IrtParam> get copyWith => __$IrtParamCopyWithImpl<_IrtParam>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IrtParamToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IrtParam&&(identical(other.a, a) || other.a == a)&&(identical(other.b, b) || other.b == b)&&(identical(other.c, c) || other.c == c));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,a,b,c);

@override
String toString() {
  return 'IrtParam(a: $a, b: $b, c: $c)';
}


}

/// @nodoc
abstract mixin class _$IrtParamCopyWith<$Res> implements $IrtParamCopyWith<$Res> {
  factory _$IrtParamCopyWith(_IrtParam value, $Res Function(_IrtParam) _then) = __$IrtParamCopyWithImpl;
@override @useResult
$Res call({
 double a, double b, double? c
});




}
/// @nodoc
class __$IrtParamCopyWithImpl<$Res>
    implements _$IrtParamCopyWith<$Res> {
  __$IrtParamCopyWithImpl(this._self, this._then);

  final _IrtParam _self;
  final $Res Function(_IrtParam) _then;

/// Create a copy of IrtParam
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? a = null,Object? b = null,Object? c = freezed,}) {
  return _then(_IrtParam(
a: null == a ? _self.a : a // ignore: cast_nullable_to_non_nullable
as double,b: null == b ? _self.b : b // ignore: cast_nullable_to_non_nullable
as double,c: freezed == c ? _self.c : c // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$ItemMetadata {

 CEFR get cefr; IrtParam get irt; List<String> get tags; int get estimatedTimeSec;
/// Create a copy of ItemMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemMetadataCopyWith<ItemMetadata> get copyWith => _$ItemMetadataCopyWithImpl<ItemMetadata>(this as ItemMetadata, _$identity);

  /// Serializes this ItemMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemMetadata&&(identical(other.cefr, cefr) || other.cefr == cefr)&&(identical(other.irt, irt) || other.irt == irt)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.estimatedTimeSec, estimatedTimeSec) || other.estimatedTimeSec == estimatedTimeSec));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cefr,irt,const DeepCollectionEquality().hash(tags),estimatedTimeSec);

@override
String toString() {
  return 'ItemMetadata(cefr: $cefr, irt: $irt, tags: $tags, estimatedTimeSec: $estimatedTimeSec)';
}


}

/// @nodoc
abstract mixin class $ItemMetadataCopyWith<$Res>  {
  factory $ItemMetadataCopyWith(ItemMetadata value, $Res Function(ItemMetadata) _then) = _$ItemMetadataCopyWithImpl;
@useResult
$Res call({
 CEFR cefr, IrtParam irt, List<String> tags, int estimatedTimeSec
});


$IrtParamCopyWith<$Res> get irt;

}
/// @nodoc
class _$ItemMetadataCopyWithImpl<$Res>
    implements $ItemMetadataCopyWith<$Res> {
  _$ItemMetadataCopyWithImpl(this._self, this._then);

  final ItemMetadata _self;
  final $Res Function(ItemMetadata) _then;

/// Create a copy of ItemMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cefr = null,Object? irt = null,Object? tags = null,Object? estimatedTimeSec = null,}) {
  return _then(_self.copyWith(
cefr: null == cefr ? _self.cefr : cefr // ignore: cast_nullable_to_non_nullable
as CEFR,irt: null == irt ? _self.irt : irt // ignore: cast_nullable_to_non_nullable
as IrtParam,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,estimatedTimeSec: null == estimatedTimeSec ? _self.estimatedTimeSec : estimatedTimeSec // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of ItemMetadata
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IrtParamCopyWith<$Res> get irt {
  
  return $IrtParamCopyWith<$Res>(_self.irt, (value) {
    return _then(_self.copyWith(irt: value));
  });
}
}


/// Adds pattern-matching-related methods to [ItemMetadata].
extension ItemMetadataPatterns on ItemMetadata {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemMetadata() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemMetadata value)  $default,){
final _that = this;
switch (_that) {
case _ItemMetadata():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _ItemMetadata() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CEFR cefr,  IrtParam irt,  List<String> tags,  int estimatedTimeSec)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemMetadata() when $default != null:
return $default(_that.cefr,_that.irt,_that.tags,_that.estimatedTimeSec);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CEFR cefr,  IrtParam irt,  List<String> tags,  int estimatedTimeSec)  $default,) {final _that = this;
switch (_that) {
case _ItemMetadata():
return $default(_that.cefr,_that.irt,_that.tags,_that.estimatedTimeSec);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CEFR cefr,  IrtParam irt,  List<String> tags,  int estimatedTimeSec)?  $default,) {final _that = this;
switch (_that) {
case _ItemMetadata() when $default != null:
return $default(_that.cefr,_that.irt,_that.tags,_that.estimatedTimeSec);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ItemMetadata implements ItemMetadata {
  const _ItemMetadata({required this.cefr, required this.irt, final  List<String> tags = const <String>[], required this.estimatedTimeSec}): _tags = tags;
  factory _ItemMetadata.fromJson(Map<String, dynamic> json) => _$ItemMetadataFromJson(json);

@override final  CEFR cefr;
@override final  IrtParam irt;
 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  int estimatedTimeSec;

/// Create a copy of ItemMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemMetadataCopyWith<_ItemMetadata> get copyWith => __$ItemMetadataCopyWithImpl<_ItemMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemMetadata&&(identical(other.cefr, cefr) || other.cefr == cefr)&&(identical(other.irt, irt) || other.irt == irt)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.estimatedTimeSec, estimatedTimeSec) || other.estimatedTimeSec == estimatedTimeSec));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cefr,irt,const DeepCollectionEquality().hash(_tags),estimatedTimeSec);

@override
String toString() {
  return 'ItemMetadata(cefr: $cefr, irt: $irt, tags: $tags, estimatedTimeSec: $estimatedTimeSec)';
}


}

/// @nodoc
abstract mixin class _$ItemMetadataCopyWith<$Res> implements $ItemMetadataCopyWith<$Res> {
  factory _$ItemMetadataCopyWith(_ItemMetadata value, $Res Function(_ItemMetadata) _then) = __$ItemMetadataCopyWithImpl;
@override @useResult
$Res call({
 CEFR cefr, IrtParam irt, List<String> tags, int estimatedTimeSec
});


@override $IrtParamCopyWith<$Res> get irt;

}
/// @nodoc
class __$ItemMetadataCopyWithImpl<$Res>
    implements _$ItemMetadataCopyWith<$Res> {
  __$ItemMetadataCopyWithImpl(this._self, this._then);

  final _ItemMetadata _self;
  final $Res Function(_ItemMetadata) _then;

/// Create a copy of ItemMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cefr = null,Object? irt = null,Object? tags = null,Object? estimatedTimeSec = null,}) {
  return _then(_ItemMetadata(
cefr: null == cefr ? _self.cefr : cefr // ignore: cast_nullable_to_non_nullable
as CEFR,irt: null == irt ? _self.irt : irt // ignore: cast_nullable_to_non_nullable
as IrtParam,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,estimatedTimeSec: null == estimatedTimeSec ? _self.estimatedTimeSec : estimatedTimeSec // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of ItemMetadata
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IrtParamCopyWith<$Res> get irt {
  
  return $IrtParamCopyWith<$Res>(_self.irt, (value) {
    return _then(_self.copyWith(irt: value));
  });
}
}


/// @nodoc
mixin _$AssessmentItem {

 String get id; Skill get skill;// stem can be String or structured object (for speaking/writing)
 dynamic get stem; List<String>? get options; String get answerKey; ItemMetadata get metadata;
/// Create a copy of AssessmentItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssessmentItemCopyWith<AssessmentItem> get copyWith => _$AssessmentItemCopyWithImpl<AssessmentItem>(this as AssessmentItem, _$identity);

  /// Serializes this AssessmentItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssessmentItem&&(identical(other.id, id) || other.id == id)&&(identical(other.skill, skill) || other.skill == skill)&&const DeepCollectionEquality().equals(other.stem, stem)&&const DeepCollectionEquality().equals(other.options, options)&&(identical(other.answerKey, answerKey) || other.answerKey == answerKey)&&(identical(other.metadata, metadata) || other.metadata == metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,skill,const DeepCollectionEquality().hash(stem),const DeepCollectionEquality().hash(options),answerKey,metadata);

@override
String toString() {
  return 'AssessmentItem(id: $id, skill: $skill, stem: $stem, options: $options, answerKey: $answerKey, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $AssessmentItemCopyWith<$Res>  {
  factory $AssessmentItemCopyWith(AssessmentItem value, $Res Function(AssessmentItem) _then) = _$AssessmentItemCopyWithImpl;
@useResult
$Res call({
 String id, Skill skill, dynamic stem, List<String>? options, String answerKey, ItemMetadata metadata
});


$ItemMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class _$AssessmentItemCopyWithImpl<$Res>
    implements $AssessmentItemCopyWith<$Res> {
  _$AssessmentItemCopyWithImpl(this._self, this._then);

  final AssessmentItem _self;
  final $Res Function(AssessmentItem) _then;

/// Create a copy of AssessmentItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? skill = null,Object? stem = freezed,Object? options = freezed,Object? answerKey = null,Object? metadata = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,skill: null == skill ? _self.skill : skill // ignore: cast_nullable_to_non_nullable
as Skill,stem: freezed == stem ? _self.stem : stem // ignore: cast_nullable_to_non_nullable
as dynamic,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<String>?,answerKey: null == answerKey ? _self.answerKey : answerKey // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as ItemMetadata,
  ));
}
/// Create a copy of AssessmentItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemMetadataCopyWith<$Res> get metadata {
  
  return $ItemMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [AssessmentItem].
extension AssessmentItemPatterns on AssessmentItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssessmentItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssessmentItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssessmentItem value)  $default,){
final _that = this;
switch (_that) {
case _AssessmentItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssessmentItem value)?  $default,){
final _that = this;
switch (_that) {
case _AssessmentItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  Skill skill,  dynamic stem,  List<String>? options,  String answerKey,  ItemMetadata metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssessmentItem() when $default != null:
return $default(_that.id,_that.skill,_that.stem,_that.options,_that.answerKey,_that.metadata);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  Skill skill,  dynamic stem,  List<String>? options,  String answerKey,  ItemMetadata metadata)  $default,) {final _that = this;
switch (_that) {
case _AssessmentItem():
return $default(_that.id,_that.skill,_that.stem,_that.options,_that.answerKey,_that.metadata);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  Skill skill,  dynamic stem,  List<String>? options,  String answerKey,  ItemMetadata metadata)?  $default,) {final _that = this;
switch (_that) {
case _AssessmentItem() when $default != null:
return $default(_that.id,_that.skill,_that.stem,_that.options,_that.answerKey,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AssessmentItem implements AssessmentItem {
  const _AssessmentItem({required this.id, required this.skill, required this.stem, final  List<String>? options, required this.answerKey, required this.metadata}): _options = options;
  factory _AssessmentItem.fromJson(Map<String, dynamic> json) => _$AssessmentItemFromJson(json);

@override final  String id;
@override final  Skill skill;
// stem can be String or structured object (for speaking/writing)
@override final  dynamic stem;
 final  List<String>? _options;
@override List<String>? get options {
  final value = _options;
  if (value == null) return null;
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String answerKey;
@override final  ItemMetadata metadata;

/// Create a copy of AssessmentItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssessmentItemCopyWith<_AssessmentItem> get copyWith => __$AssessmentItemCopyWithImpl<_AssessmentItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssessmentItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssessmentItem&&(identical(other.id, id) || other.id == id)&&(identical(other.skill, skill) || other.skill == skill)&&const DeepCollectionEquality().equals(other.stem, stem)&&const DeepCollectionEquality().equals(other._options, _options)&&(identical(other.answerKey, answerKey) || other.answerKey == answerKey)&&(identical(other.metadata, metadata) || other.metadata == metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,skill,const DeepCollectionEquality().hash(stem),const DeepCollectionEquality().hash(_options),answerKey,metadata);

@override
String toString() {
  return 'AssessmentItem(id: $id, skill: $skill, stem: $stem, options: $options, answerKey: $answerKey, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$AssessmentItemCopyWith<$Res> implements $AssessmentItemCopyWith<$Res> {
  factory _$AssessmentItemCopyWith(_AssessmentItem value, $Res Function(_AssessmentItem) _then) = __$AssessmentItemCopyWithImpl;
@override @useResult
$Res call({
 String id, Skill skill, dynamic stem, List<String>? options, String answerKey, ItemMetadata metadata
});


@override $ItemMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class __$AssessmentItemCopyWithImpl<$Res>
    implements _$AssessmentItemCopyWith<$Res> {
  __$AssessmentItemCopyWithImpl(this._self, this._then);

  final _AssessmentItem _self;
  final $Res Function(_AssessmentItem) _then;

/// Create a copy of AssessmentItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? skill = null,Object? stem = freezed,Object? options = freezed,Object? answerKey = null,Object? metadata = null,}) {
  return _then(_AssessmentItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,skill: null == skill ? _self.skill : skill // ignore: cast_nullable_to_non_nullable
as Skill,stem: freezed == stem ? _self.stem : stem // ignore: cast_nullable_to_non_nullable
as dynamic,options: freezed == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<String>?,answerKey: null == answerKey ? _self.answerKey : answerKey // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as ItemMetadata,
  ));
}

/// Create a copy of AssessmentItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemMetadataCopyWith<$Res> get metadata {
  
  return $ItemMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}

// dart format on
