//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <listener_caregiver/listener_caregiver_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) listener_caregiver_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "ListenerCaregiverPlugin");
  listener_caregiver_plugin_register_with_registrar(listener_caregiver_registrar);
}
