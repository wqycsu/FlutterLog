package com.wqy.example.log

import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar

class LogPlugin: MethodCallHandler {
  companion object {
    @JvmStatic
    fun registerWith(registrar: Registrar) {
      val channel = MethodChannel(registrar.messenger(), "log")
      channel.setMethodCallHandler(LogPlugin())
    }
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    if (call.method == "getPlatformVersion") {
      result.success("Android ${android.os.Build.VERSION.RELEASE}")
    } else if(call.method == "log"){
      val level = call.argument<Int>("level")
      val tag = call.argument<String>("tag")
      val message = call.argument<String>("message")
      LogUtil.log(level as Int, tag as String, message as String)
    } else {
      result.notImplemented()
    }
  }
}
