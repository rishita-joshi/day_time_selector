#ifndef FLUTTER_PLUGIN_DAY_TIME_SELECTOR_PLUGIN_H_
#define FLUTTER_PLUGIN_DAY_TIME_SELECTOR_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace day_time_selector {

class DayTimeSelectorPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  DayTimeSelectorPlugin();

  virtual ~DayTimeSelectorPlugin();

  // Disallow copy and assign.
  DayTimeSelectorPlugin(const DayTimeSelectorPlugin&) = delete;
  DayTimeSelectorPlugin& operator=(const DayTimeSelectorPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace day_time_selector

#endif  // FLUTTER_PLUGIN_DAY_TIME_SELECTOR_PLUGIN_H_
