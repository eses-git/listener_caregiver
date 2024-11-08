import 'package:flutter/services.dart';

class ListenerCaregiver {
  static const MethodChannel _channel = MethodChannel('listener_caregiver');

  // Function to call startListening with a word parameter
  static Future<void> startListening(String word) async {
    try {
      final result = await _channel.invokeMethod('startListening', {'word': word});
      print(result);  // This will print the success message from the native side
    } on PlatformException catch (e) {
      print("Failed to start listening: '${e.message}'.");
    }
  }

  // Function to call stopListening without parameters
  static Future<void> stopListening() async {
    try {
      final result = await _channel.invokeMethod('stopListening');
      print(result);  // This will print the success message from the native side
    } on PlatformException catch (e) {
      print("Failed to stop listening: '${e.message}'.");
    }
  }
}
