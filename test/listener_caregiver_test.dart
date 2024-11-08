import 'package:flutter_test/flutter_test.dart';
import 'package:listener_caregiver/listener_caregiver.dart';
import 'package:listener_caregiver/listener_caregiver_platform_interface.dart';
import 'package:listener_caregiver/listener_caregiver_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockListenerCaregiverPlatform
    with MockPlatformInterfaceMixin
    implements ListenerCaregiverPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ListenerCaregiverPlatform initialPlatform = ListenerCaregiverPlatform.instance;

  test('$MethodChannelListenerCaregiver is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelListenerCaregiver>());
  });

  test('getPlatformVersion', () async {
    ListenerCaregiver listenerCaregiverPlugin = ListenerCaregiver();
    MockListenerCaregiverPlatform fakePlatform = MockListenerCaregiverPlatform();
    ListenerCaregiverPlatform.instance = fakePlatform;

    expect(await listenerCaregiverPlugin.getPlatformVersion(), '42');
  });
}
