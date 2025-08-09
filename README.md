# Tahseen

Adaptive & Personalized Arabic Learning Platform (Flutter + Riverpod + GoRouter)

## Requirements
- Flutter (stable)
- Dart SDK (bundled with Flutter)

## Getting Started
```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter run
```

## Test
```bash
flutter test
```

## Structure
```
lib/
  core/
    di/
    routing/
    theme/
    utils/
  features/
    onboarding/
    assessment/
      engine/{irt.dart,item_bank.dart,session.dart}
      models/
      presentation/
    learning/
      modules/
      paths/
      presentation/
    profile/
      models/
    certificate/
      presentation/
    ai/
      ai_client.dart
      ai_planner.dart
      ai_tutor.dart
```

## Routes
- `/`
- `/onboarding`
- `/dashboard`
- `/pretest`
- `/learn`
- `/practice/{skill}`
- `/posttest`
- `/certificate`

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
