import 'package:flutter_test/flutter_test.dart';
import 'package:day_time_selector/day_time_selector.dart';
import 'package:day_time_selector/day_time_selector_platform_interface.dart';
import 'package:day_time_selector/day_time_selector_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDayTimeSelectorPlatform
    with MockPlatformInterfaceMixin
    implements DayTimeSelectorPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DayTimeSelectorPlatform initialPlatform = DayTimeSelectorPlatform.instance;

  test('$MethodChannelDayTimeSelector is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDayTimeSelector>());
  });

  test('getPlatformVersion', () async {
    DayTimeSelector dayTimeSelectorPlugin = DayTimeSelector();
    MockDayTimeSelectorPlatform fakePlatform = MockDayTimeSelectorPlatform();
    DayTimeSelectorPlatform.instance = fakePlatform;

    expect(await dayTimeSelectorPlugin.getPlatformVersion(), '42');
  });
}
