# Test Plan

## Unit Tests
- ThetaEstimator: EAP estimation outputs reasonable theta/se given synthetic responses.
- IrtItemSelector: selects item with highest information near current theta and avoids servedIds.
- AiPlanner: reorders modules prioritizing weakest skill and respects insights/prerequisites.

## Widget Tests
- PreTestScreen: renders tabs per skill, shows item and handles answer flow until finished.
- PracticeScreen: renders content per skill; with mocked `aiClientProvider` available for future interactions.

## Golden Tests (ringan)
- DashboardScreen golden snapshot (layout smoke). Initially skipped; enable to record/update goldens locally.

## Scripts
- Build codegen: `dart run build_runner build --delete-conflicting-outputs`
- Run tests: `flutter test`

> Catatan: Golden test memerlukan perekaman awal file referensi di folder `test/goldens/`.
