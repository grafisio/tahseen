import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../assessment/models/enums.dart';

abstract class NotificationService {
  Future<void> requestPermission();
  Future<void> scheduleDaily({required TimeOfDay time, String? title, String? body});
  Future<void> scheduleWeekly({required int weekday, required TimeOfDay time, String? title, String? body});
  Future<void> scheduleIdleNudge({required Duration idleAfter, String? title, String? body});
  Future<void> scheduleMicroLearning({required Skill skill, required double theta, String? deeplink});
}

class NoopNotificationService implements NotificationService {
  NoopNotificationService(this._logger);
  final Logger _logger;

  @override
  Future<void> requestPermission() async {
    _logger.i('NoopNotificationService.requestPermission');
  }

  @override
  Future<void> scheduleDaily({required TimeOfDay time, String? title, String? body}) async {
    _logger.i('NoopNotificationService.scheduleDaily @${time.hour}:${time.minute} title=$title');
  }

  @override
  Future<void> scheduleWeekly({required int weekday, required TimeOfDay time, String? title, String? body}) async {
    _logger.i('NoopNotificationService.scheduleWeekly weekday=$weekday @${time.hour}:${time.minute} title=$title');
  }

  @override
  Future<void> scheduleIdleNudge({required Duration idleAfter, String? title, String? body}) async {
    _logger.i('NoopNotificationService.scheduleIdleNudge after=${idleAfter.inHours}h title=$title');
  }

  @override
  Future<void> scheduleMicroLearning({required Skill skill, required double theta, String? deeplink}) async {
    _logger.i('NoopNotificationService.scheduleMicroLearning skill=${skill.name} theta=$theta link=$deeplink');
  }
}


