#include "include/day_time_selector/day_time_selector_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "day_time_selector_plugin.h"

void DayTimeSelectorPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  day_time_selector::DayTimeSelectorPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
