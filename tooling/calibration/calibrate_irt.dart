import 'dart:convert';
import 'dart:io';

// Input JSON: array of records {userId?, sessionId, skill, itemId, chosen, correct, timeMs, thetaBefore, thetaAfter}
// Output JSON: map itemId -> newB (approximate)

void main(List<String> args) async {
  if (args.length < 2) {
    stderr.writeln('Usage: dart run tooling/calibration/calibrate_irt.dart <input.json> <output.json>');
    exit(1);
  }
  final inputPath = args[0];
  final outputPath = args[1];
  final raw = await File(inputPath).readAsString();
  final List<dynamic> rows = json.decode(raw) as List<dynamic>;

  // Aggregate per item: collect (thetaBefore, correct)
  final Map<String, List<Map<String, dynamic>>> perItem = {};
  for (final r in rows) {
    final m = r as Map<String, dynamic>;
    final itemId = m['itemId'] as String;
    final theta = (m['thetaBefore'] as num).toDouble();
    final correct = m['correct'] as bool;
    perItem.putIfAbsent(itemId, () => []).add({'theta': theta, 'correct': correct});
  }

  final Map<String, double> newB = {};
  perItem.forEach((itemId, obs) {
    if (obs.isEmpty) return;
    // naive: estimate b as mean theta where responses transition; use average theta with weighting by correctness
    double sum = 0, w = 0;
    for (final o in obs) {
      final th = (o['theta'] as double);
      final c = (o['correct'] as bool) ? 1.0 : 0.0;
      // center around 0.5 to push b up if many wrong at lower theta
      final weight = (c - 0.5);
      sum += th * weight;
      w += weight.abs();
    }
    final est = w > 1e-9 ? sum / w : 0.0;
    newB[itemId] = est;
  });

  await File(outputPath).writeAsString(const JsonEncoder.withIndent('  ').convert(newB));
  stdout.writeln('Calibration complete. Wrote ${newB.length} items to $outputPath');
}


