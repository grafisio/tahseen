// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adaptive_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdaptiveRecord {

 String get itemId; double get b; bool get responseCorrect; int get timeMs; String? get chosen; double get thetaBefore; double get thetaAfter; double get seAfter;
/// Create a copy of AdaptiveRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdaptiveRecordCopyWith<AdaptiveRecord> get copyWith => _$AdaptiveRecordCopyWithImpl<AdaptiveRecord>(this as AdaptiveRecord, _$identity);

  /// Serializes this AdaptiveRecord to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdaptiveRecord&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.b, b) || other.b == b)&&(identical(other.responseCorrect, responseCorrect) || other.responseCorrect == responseCorrect)&&(identical(other.timeMs, timeMs) || other.timeMs == timeMs)&&(identical(other.chosen, chosen) || other.chosen == chosen)&&(identical(other.thetaBefore, thetaBefore) || other.thetaBefore == thetaBefore)&&(identical(other.thetaAfter, thetaAfter) || other.thetaAfter == thetaAfter)&&(identical(other.seAfter, seAfter) || other.seAfter == seAfter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,b,responseCorrect,timeMs,chosen,thetaBefore,thetaAfter,seAfter);

@override
String toString() {
  return 'AdaptiveRecord(itemId: $itemId, b: $b, responseCorrect: $responseCorrect, timeMs: $timeMs, chosen: $chosen, thetaBefore: $thetaBefore, thetaAfter: $thetaAfter, seAfter: $seAfter)';
}


}

/// @nodoc
abstract mixin class $AdaptiveRecordCopyWith<$Res>  {
  factory $AdaptiveRecordCopyWith(AdaptiveRecord value, $Res Function(AdaptiveRecord) _then) = _$AdaptiveRecordCopyWithImpl;
@useResult
$Res call({
 String itemId, double b, bool responseCorrect, int timeMs, String? chosen, double thetaBefore, double thetaAfter, double seAfter
});




}
/// @nodoc
class _$AdaptiveRecordCopyWithImpl<$Res>
    implements $AdaptiveRecordCopyWith<$Res> {
  _$AdaptiveRecordCopyWithImpl(this._self, this._then);

  final AdaptiveRecord _self;
  final $Res Function(AdaptiveRecord) _then;

/// Create a copy of AdaptiveRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemId = null,Object? b = null,Object? responseCorrect = null,Object? timeMs = null,Object? chosen = freezed,Object? thetaBefore = null,Object? thetaAfter = null,Object? seAfter = null,}) {
  return _then(_self.copyWith(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,b: null == b ? _self.b : b // ignore: cast_nullable_to_non_nullable
as double,responseCorrect: null == responseCorrect ? _self.responseCorrect : responseCorrect // ignore: cast_nullable_to_non_nullable
as bool,timeMs: null == timeMs ? _self.timeMs : timeMs // ignore: cast_nullable_to_non_nullable
as int,chosen: freezed == chosen ? _self.chosen : chosen // ignore: cast_nullable_to_non_nullable
as String?,thetaBefore: null == thetaBefore ? _self.thetaBefore : thetaBefore // ignore: cast_nullable_to_non_nullable
as double,thetaAfter: null == thetaAfter ? _self.thetaAfter : thetaAfter // ignore: cast_nullable_to_non_nullable
as double,seAfter: null == seAfter ? _self.seAfter : seAfter // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [AdaptiveRecord].
extension AdaptiveRecordPatterns on AdaptiveRecord {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdaptiveRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdaptiveRecord() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdaptiveRecord value)  $default,){
final _that = this;
switch (_that) {
case _AdaptiveRecord():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdaptiveRecord value)?  $default,){
final _that = this;
switch (_that) {
case _AdaptiveRecord() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String itemId,  double b,  bool responseCorrect,  int timeMs,  String? chosen,  double thetaBefore,  double thetaAfter,  double seAfter)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdaptiveRecord() when $default != null:
return $default(_that.itemId,_that.b,_that.responseCorrect,_that.timeMs,_that.chosen,_that.thetaBefore,_that.thetaAfter,_that.seAfter);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String itemId,  double b,  bool responseCorrect,  int timeMs,  String? chosen,  double thetaBefore,  double thetaAfter,  double seAfter)  $default,) {final _that = this;
switch (_that) {
case _AdaptiveRecord():
return $default(_that.itemId,_that.b,_that.responseCorrect,_that.timeMs,_that.chosen,_that.thetaBefore,_that.thetaAfter,_that.seAfter);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String itemId,  double b,  bool responseCorrect,  int timeMs,  String? chosen,  double thetaBefore,  double thetaAfter,  double seAfter)?  $default,) {final _that = this;
switch (_that) {
case _AdaptiveRecord() when $default != null:
return $default(_that.itemId,_that.b,_that.responseCorrect,_that.timeMs,_that.chosen,_that.thetaBefore,_that.thetaAfter,_that.seAfter);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdaptiveRecord implements AdaptiveRecord {
  const _AdaptiveRecord({required this.itemId, required this.b, required this.responseCorrect, required this.timeMs, this.chosen, required this.thetaBefore, required this.thetaAfter, required this.seAfter});
  factory _AdaptiveRecord.fromJson(Map<String, dynamic> json) => _$AdaptiveRecordFromJson(json);

@override final  String itemId;
@override final  double b;
@override final  bool responseCorrect;
@override final  int timeMs;
@override final  String? chosen;
@override final  double thetaBefore;
@override final  double thetaAfter;
@override final  double seAfter;

/// Create a copy of AdaptiveRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdaptiveRecordCopyWith<_AdaptiveRecord> get copyWith => __$AdaptiveRecordCopyWithImpl<_AdaptiveRecord>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdaptiveRecordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdaptiveRecord&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.b, b) || other.b == b)&&(identical(other.responseCorrect, responseCorrect) || other.responseCorrect == responseCorrect)&&(identical(other.timeMs, timeMs) || other.timeMs == timeMs)&&(identical(other.chosen, chosen) || other.chosen == chosen)&&(identical(other.thetaBefore, thetaBefore) || other.thetaBefore == thetaBefore)&&(identical(other.thetaAfter, thetaAfter) || other.thetaAfter == thetaAfter)&&(identical(other.seAfter, seAfter) || other.seAfter == seAfter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,b,responseCorrect,timeMs,chosen,thetaBefore,thetaAfter,seAfter);

@override
String toString() {
  return 'AdaptiveRecord(itemId: $itemId, b: $b, responseCorrect: $responseCorrect, timeMs: $timeMs, chosen: $chosen, thetaBefore: $thetaBefore, thetaAfter: $thetaAfter, seAfter: $seAfter)';
}


}

/// @nodoc
abstract mixin class _$AdaptiveRecordCopyWith<$Res> implements $AdaptiveRecordCopyWith<$Res> {
  factory _$AdaptiveRecordCopyWith(_AdaptiveRecord value, $Res Function(_AdaptiveRecord) _then) = __$AdaptiveRecordCopyWithImpl;
@override @useResult
$Res call({
 String itemId, double b, bool responseCorrect, int timeMs, String? chosen, double thetaBefore, double thetaAfter, double seAfter
});




}
/// @nodoc
class __$AdaptiveRecordCopyWithImpl<$Res>
    implements _$AdaptiveRecordCopyWith<$Res> {
  __$AdaptiveRecordCopyWithImpl(this._self, this._then);

  final _AdaptiveRecord _self;
  final $Res Function(_AdaptiveRecord) _then;

/// Create a copy of AdaptiveRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? b = null,Object? responseCorrect = null,Object? timeMs = null,Object? chosen = freezed,Object? thetaBefore = null,Object? thetaAfter = null,Object? seAfter = null,}) {
  return _then(_AdaptiveRecord(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,b: null == b ? _self.b : b // ignore: cast_nullable_to_non_nullable
as double,responseCorrect: null == responseCorrect ? _self.responseCorrect : responseCorrect // ignore: cast_nullable_to_non_nullable
as bool,timeMs: null == timeMs ? _self.timeMs : timeMs // ignore: cast_nullable_to_non_nullable
as int,chosen: freezed == chosen ? _self.chosen : chosen // ignore: cast_nullable_to_non_nullable
as String?,thetaBefore: null == thetaBefore ? _self.thetaBefore : thetaBefore // ignore: cast_nullable_to_non_nullable
as double,thetaAfter: null == thetaAfter ? _self.thetaAfter : thetaAfter // ignore: cast_nullable_to_non_nullable
as double,seAfter: null == seAfter ? _self.seAfter : seAfter // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$AdaptiveLog {

 String get sessionId; Skill get skill; DateTime get tStart; DateTime? get tEnd; List<AdaptiveRecord> get records; StopReason? get stopReason; Map<String, int> get itemExposureCount;
/// Create a copy of AdaptiveLog
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdaptiveLogCopyWith<AdaptiveLog> get copyWith => _$AdaptiveLogCopyWithImpl<AdaptiveLog>(this as AdaptiveLog, _$identity);

  /// Serializes this AdaptiveLog to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdaptiveLog&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.skill, skill) || other.skill == skill)&&(identical(other.tStart, tStart) || other.tStart == tStart)&&(identical(other.tEnd, tEnd) || other.tEnd == tEnd)&&const DeepCollectionEquality().equals(other.records, records)&&(identical(other.stopReason, stopReason) || other.stopReason == stopReason)&&const DeepCollectionEquality().equals(other.itemExposureCount, itemExposureCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sessionId,skill,tStart,tEnd,const DeepCollectionEquality().hash(records),stopReason,const DeepCollectionEquality().hash(itemExposureCount));

@override
String toString() {
  return 'AdaptiveLog(sessionId: $sessionId, skill: $skill, tStart: $tStart, tEnd: $tEnd, records: $records, stopReason: $stopReason, itemExposureCount: $itemExposureCount)';
}


}

/// @nodoc
abstract mixin class $AdaptiveLogCopyWith<$Res>  {
  factory $AdaptiveLogCopyWith(AdaptiveLog value, $Res Function(AdaptiveLog) _then) = _$AdaptiveLogCopyWithImpl;
@useResult
$Res call({
 String sessionId, Skill skill, DateTime tStart, DateTime? tEnd, List<AdaptiveRecord> records, StopReason? stopReason, Map<String, int> itemExposureCount
});




}
/// @nodoc
class _$AdaptiveLogCopyWithImpl<$Res>
    implements $AdaptiveLogCopyWith<$Res> {
  _$AdaptiveLogCopyWithImpl(this._self, this._then);

  final AdaptiveLog _self;
  final $Res Function(AdaptiveLog) _then;

/// Create a copy of AdaptiveLog
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessionId = null,Object? skill = null,Object? tStart = null,Object? tEnd = freezed,Object? records = null,Object? stopReason = freezed,Object? itemExposureCount = null,}) {
  return _then(_self.copyWith(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,skill: null == skill ? _self.skill : skill // ignore: cast_nullable_to_non_nullable
as Skill,tStart: null == tStart ? _self.tStart : tStart // ignore: cast_nullable_to_non_nullable
as DateTime,tEnd: freezed == tEnd ? _self.tEnd : tEnd // ignore: cast_nullable_to_non_nullable
as DateTime?,records: null == records ? _self.records : records // ignore: cast_nullable_to_non_nullable
as List<AdaptiveRecord>,stopReason: freezed == stopReason ? _self.stopReason : stopReason // ignore: cast_nullable_to_non_nullable
as StopReason?,itemExposureCount: null == itemExposureCount ? _self.itemExposureCount : itemExposureCount // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}

}


/// Adds pattern-matching-related methods to [AdaptiveLog].
extension AdaptiveLogPatterns on AdaptiveLog {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdaptiveLog value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdaptiveLog() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdaptiveLog value)  $default,){
final _that = this;
switch (_that) {
case _AdaptiveLog():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdaptiveLog value)?  $default,){
final _that = this;
switch (_that) {
case _AdaptiveLog() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String sessionId,  Skill skill,  DateTime tStart,  DateTime? tEnd,  List<AdaptiveRecord> records,  StopReason? stopReason,  Map<String, int> itemExposureCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdaptiveLog() when $default != null:
return $default(_that.sessionId,_that.skill,_that.tStart,_that.tEnd,_that.records,_that.stopReason,_that.itemExposureCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String sessionId,  Skill skill,  DateTime tStart,  DateTime? tEnd,  List<AdaptiveRecord> records,  StopReason? stopReason,  Map<String, int> itemExposureCount)  $default,) {final _that = this;
switch (_that) {
case _AdaptiveLog():
return $default(_that.sessionId,_that.skill,_that.tStart,_that.tEnd,_that.records,_that.stopReason,_that.itemExposureCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String sessionId,  Skill skill,  DateTime tStart,  DateTime? tEnd,  List<AdaptiveRecord> records,  StopReason? stopReason,  Map<String, int> itemExposureCount)?  $default,) {final _that = this;
switch (_that) {
case _AdaptiveLog() when $default != null:
return $default(_that.sessionId,_that.skill,_that.tStart,_that.tEnd,_that.records,_that.stopReason,_that.itemExposureCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdaptiveLog implements AdaptiveLog {
  const _AdaptiveLog({required this.sessionId, required this.skill, required this.tStart, this.tEnd, final  List<AdaptiveRecord> records = const <AdaptiveRecord>[], this.stopReason, final  Map<String, int> itemExposureCount = const <String, int>{}}): _records = records,_itemExposureCount = itemExposureCount;
  factory _AdaptiveLog.fromJson(Map<String, dynamic> json) => _$AdaptiveLogFromJson(json);

@override final  String sessionId;
@override final  Skill skill;
@override final  DateTime tStart;
@override final  DateTime? tEnd;
 final  List<AdaptiveRecord> _records;
@override@JsonKey() List<AdaptiveRecord> get records {
  if (_records is EqualUnmodifiableListView) return _records;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_records);
}

@override final  StopReason? stopReason;
 final  Map<String, int> _itemExposureCount;
@override@JsonKey() Map<String, int> get itemExposureCount {
  if (_itemExposureCount is EqualUnmodifiableMapView) return _itemExposureCount;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_itemExposureCount);
}


/// Create a copy of AdaptiveLog
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdaptiveLogCopyWith<_AdaptiveLog> get copyWith => __$AdaptiveLogCopyWithImpl<_AdaptiveLog>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdaptiveLogToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdaptiveLog&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.skill, skill) || other.skill == skill)&&(identical(other.tStart, tStart) || other.tStart == tStart)&&(identical(other.tEnd, tEnd) || other.tEnd == tEnd)&&const DeepCollectionEquality().equals(other._records, _records)&&(identical(other.stopReason, stopReason) || other.stopReason == stopReason)&&const DeepCollectionEquality().equals(other._itemExposureCount, _itemExposureCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sessionId,skill,tStart,tEnd,const DeepCollectionEquality().hash(_records),stopReason,const DeepCollectionEquality().hash(_itemExposureCount));

@override
String toString() {
  return 'AdaptiveLog(sessionId: $sessionId, skill: $skill, tStart: $tStart, tEnd: $tEnd, records: $records, stopReason: $stopReason, itemExposureCount: $itemExposureCount)';
}


}

/// @nodoc
abstract mixin class _$AdaptiveLogCopyWith<$Res> implements $AdaptiveLogCopyWith<$Res> {
  factory _$AdaptiveLogCopyWith(_AdaptiveLog value, $Res Function(_AdaptiveLog) _then) = __$AdaptiveLogCopyWithImpl;
@override @useResult
$Res call({
 String sessionId, Skill skill, DateTime tStart, DateTime? tEnd, List<AdaptiveRecord> records, StopReason? stopReason, Map<String, int> itemExposureCount
});




}
/// @nodoc
class __$AdaptiveLogCopyWithImpl<$Res>
    implements _$AdaptiveLogCopyWith<$Res> {
  __$AdaptiveLogCopyWithImpl(this._self, this._then);

  final _AdaptiveLog _self;
  final $Res Function(_AdaptiveLog) _then;

/// Create a copy of AdaptiveLog
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionId = null,Object? skill = null,Object? tStart = null,Object? tEnd = freezed,Object? records = null,Object? stopReason = freezed,Object? itemExposureCount = null,}) {
  return _then(_AdaptiveLog(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,skill: null == skill ? _self.skill : skill // ignore: cast_nullable_to_non_nullable
as Skill,tStart: null == tStart ? _self.tStart : tStart // ignore: cast_nullable_to_non_nullable
as DateTime,tEnd: freezed == tEnd ? _self.tEnd : tEnd // ignore: cast_nullable_to_non_nullable
as DateTime?,records: null == records ? _self._records : records // ignore: cast_nullable_to_non_nullable
as List<AdaptiveRecord>,stopReason: freezed == stopReason ? _self.stopReason : stopReason // ignore: cast_nullable_to_non_nullable
as StopReason?,itemExposureCount: null == itemExposureCount ? _self._itemExposureCount : itemExposureCount // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}


}

// dart format on
