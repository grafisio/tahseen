import 'package:dio/dio.dart';

import '../assessment/models/enums.dart';
import '../learning/models/learning.dart';
import '../profile/models/profile.dart';
import '../assessment/models/ability_snapshot.dart';
// no alias needed

abstract class AiClient {
  Future<String> feedbackForResponse({
    required Skill skill,
    required String userAnswer,
    required String correctAnswer,
    required String misconceptionHint,
  });

  Future<LearningPath> planOrReplanPath({
    required Profile profile,
    required AbilitySnapshot abilities,
    required List<LearningModule> catalog,
  });

  Future<String> tutorChat({
    required String message,
    required Skill? skill,
  });
}

class AiClientLocalMock implements AiClient {
  @override
  Future<String> feedbackForResponse({required Skill skill, required String userAnswer, required String correctAnswer, required String misconceptionHint}) async {
    return 'إجابة جيدة! ${skill.name}';
  }

  @override
  Future<String> tutorChat({required String message, required Skill? skill}) async {
    return 'تابع!';
  }

  @override
  Future<LearningPath> planOrReplanPath({required Profile profile, required AbilitySnapshot abilities, required List<LearningModule> catalog}) async {
    return LearningPath(id: 'mock', modules: catalog, lockedModules: const []);
  }
}

class AiClientHttp implements AiClient {
  AiClientHttp({required String baseUrl, required String apiKey}) {
    _dio = Dio(BaseOptions(baseUrl: baseUrl, headers: {'Authorization': 'Bearer $apiKey'}));
  }
  late final Dio _dio;

  @override
  Future<String> feedbackForResponse({required Skill skill, required String userAnswer, required String correctAnswer, required String misconceptionHint}) async {
    final Response<Map<String, dynamic>> res = await _dio.post<Map<String, dynamic>>('/feedback', data: {
      'skill': skill.name,
      'userAnswer': userAnswer,
      'correctAnswer': correctAnswer,
      'misconceptionHint': misconceptionHint,
    });
    final data = res.data ?? const <String, dynamic>{};
    return (data['feedback'] as String?) ?? '';
  }

  @override
  Future<String> tutorChat({required String message, required Skill? skill}) async {
    final Response<Map<String, dynamic>> res = await _dio.post<Map<String, dynamic>>('/tutor', data: {
      'message': message,
      'skill': skill?.name,
    });
    final data = res.data ?? const <String, dynamic>{};
    return (data['reply'] as String?) ?? '';
  }

  @override
  Future<LearningPath> planOrReplanPath({required Profile profile, required AbilitySnapshot abilities, required List<LearningModule> catalog}) async {
    final Response<Map<String, dynamic>> res = await _dio.post<Map<String, dynamic>>('/planner', data: {
      'profile': profile.toJson(),
      'abilities': abilities.toJson(),
      'catalog': catalog.map((e) => e.toJson()).toList(),
    });
    final data = res.data ?? const <String, dynamic>{};
    return LearningPath.fromJson(data as Map<String, dynamic>);
  }
}


