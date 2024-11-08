#ifndef FLUTTER_PLUGIN_LISTENER_CAREGIVER_PLUGIN_H_
#define FLUTTER_PLUGIN_LISTENER_CAREGIVER_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace listener_caregiver {

class ListenerCaregiverPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  ListenerCaregiverPlugin();

  virtual ~ListenerCaregiverPlugin();

  // Disallow copy and assign.
  ListenerCaregiverPlugin(const ListenerCaregiverPlugin&) = delete;
  ListenerCaregiverPlugin& operator=(const ListenerCaregiverPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace listener_caregiver

#endif  // FLUTTER_PLUGIN_LISTENER_CAREGIVER_PLUGIN_H_
