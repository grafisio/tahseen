// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'enums.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
abstract class ItemMetadata with _$ItemMetadata {
  const factory ItemMetadata({
    required CEFR cefr,
    @JsonKey(name: 'a') required double aParam,
    @JsonKey(name: 'b') required double bParam,
    @JsonKey(name: 'c') required double cParam,
    @Default(<String>[]) List<String> tags,
  }) = _ItemMetadata;

  factory ItemMetadata.fromJson(Map<String, dynamic> json) => _$ItemMetadataFromJson(json);
}

@freezed
abstract class Item with _$Item {
  const factory Item({
    required String id,
    required Skill skill,
    required String stem,
    List<String>? options,
    String? answerKey,
    @JsonKey(toJson: _metadataToJson) required ItemMetadata metadata,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

Map<String, dynamic> _metadataToJson(ItemMetadata m) => m.toJson();


