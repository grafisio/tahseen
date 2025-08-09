import 'package:json_annotation/json_annotation.dart';

enum Skill {
  listening,
  speaking,
  reading,
  writing,
}

@JsonEnum(alwaysCreate: false)
enum CEFR {
  A1,
  A2,
  B1,
  B2,
  C1,
  C2,
}


