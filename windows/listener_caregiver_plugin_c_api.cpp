#include "include/listener_caregiver/listener_caregiver_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "listener_caregiver_plugin.h"

void ListenerCaregiverPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  listener_caregiver::ListenerCaregiverPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
