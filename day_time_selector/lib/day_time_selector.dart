
import 'day_time_selector_platform_interface.dart';

class DayTimeSelector {
  Future<String?> getPlatformVersion() {
    return DayTimeSelectorPlatform.instance.getPlatformVersion();
  }
}
