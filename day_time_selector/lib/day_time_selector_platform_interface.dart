import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'day_time_selector_method_channel.dart';

abstract class DayTimeSelectorPlatform extends PlatformInterface {
  /// Constructs a DayTimeSelectorPlatform.
  DayTimeSelectorPlatform() : super(token: _token);

  static final Object _token = Object();

  static DayTimeSelectorPlatform _instance = MethodChannelDayTimeSelector();

  /// The default instance of [DayTimeSelectorPlatform] to use.
  ///
  /// Defaults to [MethodChannelDayTimeSelector].
  static DayTimeSelectorPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DayTimeSelectorPlatform] when
  /// they register themselves.
  static set instance(DayTimeSelectorPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
