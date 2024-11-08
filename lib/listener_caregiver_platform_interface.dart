import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'listener_caregiver_method_channel.dart';

abstract class ListenerCaregiverPlatform extends PlatformInterface {
  /// Constructs a ListenerCaregiverPlatform.
  ListenerCaregiverPlatform() : super(token: _token);

  static final Object _token = Object();

  static ListenerCaregiverPlatform _instance = MethodChannelListenerCaregiver();

  /// The default instance of [ListenerCaregiverPlatform] to use.
  ///
  /// Defaults to [MethodChannelListenerCaregiver].
  static ListenerCaregiverPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ListenerCaregiverPlatform] when
  /// they register themselves.
  static set instance(ListenerCaregiverPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
