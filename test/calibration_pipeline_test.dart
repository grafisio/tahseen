import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('calibration raises b for often-wrong items', () async {
    // create temp input log
    final dir = Directory.systemTemp.createTempSync();
    final inFile = File('${dir.path}/in.json');
    final outFile = File('${dir.path}/out.json');
    // three items: iHard wrong at low theta, iEasy correct at low theta
    final logs = [
      {'itemId': 'iHard', 'thetaBefore': -0.5, 'correct': false},
      {'itemId': 'iHard', 'thetaBefore': 0.0, 'correct': false},
      {'itemId': 'iEasy', 'thetaBefore': -0.5, 'correct': true},
      {'itemId': 'iMid', 'thetaBefore': 0.0, 'correct': true},
      {'itemId': 'iMid', 'thetaBefore': 0.5, 'correct': false},
    ];
    await inFile.writeAsString(json.encode(logs));

    // run calibration script
    final res = await Process.run('dart', ['run', 'tooling/calibration/calibrate_irt.dart', inFile.path, outFile.path]);
    expect(res.exitCode, 0, reason: res.stderr.toString());

    final map = json.decode(await outFile.readAsString()) as Map<String, dynamic>;
    final bHard = (map['iHard'] as num).toDouble();
    final bEasy = (map['iEasy'] as num).toDouble();
    expect(bHard > bEasy, true);
  });
}


