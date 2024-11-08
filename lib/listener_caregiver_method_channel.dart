import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'listener_caregiver_platform_interface.dart';

/// An implementation of [ListenerCaregiverPlatform] that uses method channels.
class MethodChannelListenerCaregiver extends ListenerCaregiverPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('listener_caregiver');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
