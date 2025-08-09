// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemMetadata {

 CEFR get cefr;@JsonKey(name: 'a') double get aParam;@JsonKey(name: 'b') double get bParam;@JsonKey(name: 'c') double get cParam; List<String> get tags;
/// Create a copy of ItemMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemMetadataCopyWith<ItemMetadata> get copyWith => _$ItemMetadataCopyWithImpl<ItemMetadata>(this as ItemMetadata, _$identity);

  /// Serializes this ItemMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemMetadata&&(identical(other.cefr, cefr) || other.cefr == cefr)&&(identical(other.aParam, aParam) || other.aParam == aParam)&&(identical(other.bParam, bParam) || other.bParam == bParam)&&(identical(other.cParam, cParam) || other.cParam == cParam)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cefr,aParam,bParam,cParam,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'ItemMetadata(cefr: $cefr, aParam: $aParam, bParam: $bParam, cParam: $cParam, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $ItemMetadataCopyWith<$Res>  {
  factory $ItemMetadataCopyWith(ItemMetadata value, $Res Function(ItemMetadata) _then) = _$ItemMetadataCopyWithImpl;
@useResult
$Res call({
 CEFR cefr,@JsonKey(name: 'a') double aParam,@JsonKey(name: 'b') double bParam,@JsonKey(name: 'c') double cParam, List<String> tags
});




}
/// @nodoc
class _$ItemMetadataCopyWithImpl<$Res>
    implements $ItemMetadataCopyWith<$Res> {
  _$ItemMetadataCopyWithImpl(this._self, this._then);

  final ItemMetadata _self;
  final $Res Function(ItemMetadata) _then;

/// Create a copy of ItemMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cefr = null,Object? aParam = null,Object? bParam = null,Object? cParam = null,Object? tags = null,}) {
  return _then(_self.copyWith(
cefr: null == cefr ? _self.cefr : cefr // ignore: cast_nullable_to_non_nullable
as CEFR,aParam: null == aParam ? _self.aParam : aParam // ignore: cast_nullable_to_non_nullable
as double,bParam: null == bParam ? _self.bParam : bParam // ignore: cast_nullable_to_non_nullable
as double,cParam: null == cParam ? _self.cParam : cParam // ignore: cast_nullable_to_non_nullable
as double,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CEFR cefr, @JsonKey(name: 'a')  double aParam, @JsonKey(name: 'b')  double bParam, @JsonKey(name: 'c')  double cParam,  List<String> tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemMetadata() when $default != null:
return $default(_that.cefr,_that.aParam,_that.bParam,_that.cParam,_that.tags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CEFR cefr, @JsonKey(name: 'a')  double aParam, @JsonKey(name: 'b')  double bParam, @JsonKey(name: 'c')  double cParam,  List<String> tags)  $default,) {final _that = this;
switch (_that) {
case _ItemMetadata():
return $default(_that.cefr,_that.aParam,_that.bParam,_that.cParam,_that.tags);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CEFR cefr, @JsonKey(name: 'a')  double aParam, @JsonKey(name: 'b')  double bParam, @JsonKey(name: 'c')  double cParam,  List<String> tags)?  $default,) {final _that = this;
switch (_that) {
case _ItemMetadata() when $default != null:
return $default(_that.cefr,_that.aParam,_that.bParam,_that.cParam,_that.tags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ItemMetadata implements ItemMetadata {
  const _ItemMetadata({required this.cefr, @JsonKey(name: 'a') required this.aParam, @JsonKey(name: 'b') required this.bParam, @JsonKey(name: 'c') required this.cParam, final  List<String> tags = const <String>[]}): _tags = tags;
  factory _ItemMetadata.fromJson(Map<String, dynamic> json) => _$ItemMetadataFromJson(json);

@override final  CEFR cefr;
@override@JsonKey(name: 'a') final  double aParam;
@override@JsonKey(name: 'b') final  double bParam;
@override@JsonKey(name: 'c') final  double cParam;
 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemMetadata&&(identical(other.cefr, cefr) || other.cefr == cefr)&&(identical(other.aParam, aParam) || other.aParam == aParam)&&(identical(other.bParam, bParam) || other.bParam == bParam)&&(identical(other.cParam, cParam) || other.cParam == cParam)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cefr,aParam,bParam,cParam,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'ItemMetadata(cefr: $cefr, aParam: $aParam, bParam: $bParam, cParam: $cParam, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$ItemMetadataCopyWith<$Res> implements $ItemMetadataCopyWith<$Res> {
  factory _$ItemMetadataCopyWith(_ItemMetadata value, $Res Function(_ItemMetadata) _then) = __$ItemMetadataCopyWithImpl;
@override @useResult
$Res call({
 CEFR cefr,@JsonKey(name: 'a') double aParam,@JsonKey(name: 'b') double bParam,@JsonKey(name: 'c') double cParam, List<String> tags
});




}
/// @nodoc
class __$ItemMetadataCopyWithImpl<$Res>
    implements _$ItemMetadataCopyWith<$Res> {
  __$ItemMetadataCopyWithImpl(this._self, this._then);

  final _ItemMetadata _self;
  final $Res Function(_ItemMetadata) _then;

/// Create a copy of ItemMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cefr = null,Object? aParam = null,Object? bParam = null,Object? cParam = null,Object? tags = null,}) {
  return _then(_ItemMetadata(
cefr: null == cefr ? _self.cefr : cefr // ignore: cast_nullable_to_non_nullable
as CEFR,aParam: null == aParam ? _self.aParam : aParam // ignore: cast_nullable_to_non_nullable
as double,bParam: null == bParam ? _self.bParam : bParam // ignore: cast_nullable_to_non_nullable
as double,cParam: null == cParam ? _self.cParam : cParam // ignore: cast_nullable_to_non_nullable
as double,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$Item {

 String get id; Skill get skill; String get stem; List<String>? get options; String? get answerKey;@JsonKey(toJson: _metadataToJson) ItemMetadata get metadata;
/// Create a copy of Item
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemCopyWith<Item> get copyWith => _$ItemCopyWithImpl<Item>(this as Item, _$identity);

  /// Serializes this Item to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Item&&(identical(other.id, id) || other.id == id)&&(identical(other.skill, skill) || other.skill == skill)&&(identical(other.stem, stem) || other.stem == stem)&&const DeepCollectionEquality().equals(other.options, options)&&(identical(other.answerKey, answerKey) || other.answerKey == answerKey)&&(identical(other.metadata, metadata) || other.metadata == metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,skill,stem,const DeepCollectionEquality().hash(options),answerKey,metadata);

@override
String toString() {
  return 'Item(id: $id, skill: $skill, stem: $stem, options: $options, answerKey: $answerKey, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $ItemCopyWith<$Res>  {
  factory $ItemCopyWith(Item value, $Res Function(Item) _then) = _$ItemCopyWithImpl;
@useResult
$Res call({
 String id, Skill skill, String stem, List<String>? options, String? answerKey,@JsonKey(toJson: _metadataToJson) ItemMetadata metadata
});


$ItemMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class _$ItemCopyWithImpl<$Res>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._self, this._then);

  final Item _self;
  final $Res Function(Item) _then;

/// Create a copy of Item
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? skill = null,Object? stem = null,Object? options = freezed,Object? answerKey = freezed,Object? metadata = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,skill: null == skill ? _self.skill : skill // ignore: cast_nullable_to_non_nullable
as Skill,stem: null == stem ? _self.stem : stem // ignore: cast_nullable_to_non_nullable
as String,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<String>?,answerKey: freezed == answerKey ? _self.answerKey : answerKey // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as ItemMetadata,
  ));
}
/// Create a copy of Item
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ItemMetadataCopyWith<$Res> get metadata {
  
  return $ItemMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [Item].
extension ItemPatterns on Item {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Item value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Item() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Item value)  $default,){
final _that = this;
switch (_that) {
case _Item():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Item value)?  $default,){
final _that = this;
switch (_that) {
case _Item() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  Skill skill,  String stem,  List<String>? options,  String? answerKey, @JsonKey(toJson: _metadataToJson)  ItemMetadata metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Item() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  Skill skill,  String stem,  List<String>? options,  String? answerKey, @JsonKey(toJson: _metadataToJson)  ItemMetadata metadata)  $default,) {final _that = this;
switch (_that) {
case _Item():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  Skill skill,  String stem,  List<String>? options,  String? answerKey, @JsonKey(toJson: _metadataToJson)  ItemMetadata metadata)?  $default,) {final _that = this;
switch (_that) {
case _Item() when $default != null:
return $default(_that.id,_that.skill,_that.stem,_that.options,_that.answerKey,_that.metadata);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Item implements Item {
  const _Item({required this.id, required this.skill, required this.stem, final  List<String>? options, this.answerKey, @JsonKey(toJson: _metadataToJson) required this.metadata}): _options = options;
  factory _Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

@override final  String id;
@override final  Skill skill;
@override final  String stem;
 final  List<String>? _options;
@override List<String>? get options {
  final value = _options;
  if (value == null) return null;
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? answerKey;
@override@JsonKey(toJson: _metadataToJson) final  ItemMetadata metadata;

/// Create a copy of Item
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemCopyWith<_Item> get copyWith => __$ItemCopyWithImpl<_Item>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Item&&(identical(other.id, id) || other.id == id)&&(identical(other.skill, skill) || other.skill == skill)&&(identical(other.stem, stem) || other.stem == stem)&&const DeepCollectionEquality().equals(other._options, _options)&&(identical(other.answerKey, answerKey) || other.answerKey == answerKey)&&(identical(other.metadata, metadata) || other.metadata == metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,skill,stem,const DeepCollectionEquality().hash(_options),answerKey,metadata);

@override
String toString() {
  return 'Item(id: $id, skill: $skill, stem: $stem, options: $options, answerKey: $answerKey, metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) _then) = __$ItemCopyWithImpl;
@override @useResult
$Res call({
 String id, Skill skill, String stem, List<String>? options, String? answerKey,@JsonKey(toJson: _metadataToJson) ItemMetadata metadata
});


@override $ItemMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class __$ItemCopyWithImpl<$Res>
    implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(this._self, this._then);

  final _Item _self;
  final $Res Function(_Item) _then;

/// Create a copy of Item
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? skill = null,Object? stem = null,Object? options = freezed,Object? answerKey = freezed,Object? metadata = null,}) {
  return _then(_Item(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,skill: null == skill ? _self.skill : skill // ignore: cast_nullable_to_non_nullable
as Skill,stem: null == stem ? _self.stem : stem // ignore: cast_nullable_to_non_nullable
as String,options: freezed == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<String>?,answerKey: freezed == answerKey ? _self.answerKey : answerKey // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as ItemMetadata,
  ));
}

/// Create a copy of Item
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
