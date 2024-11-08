package com.example.listener_caregiver

import android.util.Log
import androidx.annotation.NonNull
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

/** ListenerCaregiverPlugin */
class ListenerCaregiverPlugin: FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will handle the communication between Flutter and native Android
  private lateinit var channel: MethodChannel

  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "listener_caregiver")
    channel.setMethodCallHandler(this)
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    when (call.method) {
      "startListening" -> {
        val word = call.argument<String>("word")
        if (word != null) {
          startListening(word)
          result.success("Started listening for word: $word")
        } else {
          result.error("INVALID_ARGUMENT", "Word parameter is required", null)
        }
      }
      "stopListening" -> {
        stopListening()
        result.success("Stopped listening")
      }
      "getPlatformVersion" -> {
        result.success("Android ${android.os.Build.VERSION.RELEASE}")
      }
      else -> {
        result.notImplemented()
      }
    }
  }

  private fun startListening(word: String) {
    Log.d("ListenerCaregiverPlugin", "Listening started for word: $word")
    // Add actual listening logic here
  }

  private fun stopListening() {
    Log.d("ListenerCaregiverPlugin", "Listening stopped")
    // Add actual stop listening logic here
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}
