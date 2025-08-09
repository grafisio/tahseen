import '../assessment/models/enums.dart';

class AiTutor {
  const AiTutor();

  String contextualFeedback({
    required Skill skill,
    required String userAnswer,
    required String correctAnswer,
    required String misconceptionHint,
  }) {
    switch (skill) {
      case Skill.listening:
        return 'استمع جيدًا مرة أخرى. $misconceptionHint';
      case Skill.speaking:
        return 'حاول النطق بوضوح، والإجابة الصحيحة: $correctAnswer';
      case Skill.reading:
        return 'اقرأ الجملة بتركيز. $misconceptionHint';
      case Skill.writing:
        return 'اكتب الإجابة الصحيحة: $correctAnswer';
    }
  }
}


