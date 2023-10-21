import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'day_time_selector_platform_interface.dart';

/// An implementation of [DayTimeSelectorPlatform] that uses method channels.
class MethodChannelDayTimeSelector extends DayTimeSelectorPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('day_time_selector');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
