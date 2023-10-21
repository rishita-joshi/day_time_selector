//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <day_time_selector/day_time_selector_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) day_time_selector_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "DayTimeSelectorPlugin");
  day_time_selector_plugin_register_with_registrar(day_time_selector_registrar);
}
