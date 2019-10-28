import 'dart:async';

import 'package:flutter/services.dart';

enum LogLevel { V, D, I, W, E }

class Log {
  static const MethodChannel _channel = const MethodChannel('log');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  /// Send a verbose message.
  /// The [tag] is used to identify the source of a log message.
  /// The [message] is the info you woud like logged
  static logV(String tag, String message) {
    _channel.invokeMethod(
        'log', {'level': LogLevel.V.index, 'tag': tag, 'message': message});
  }

  /// Send a debug message.
  /// The [tag] is used to identify the source of a log message.
  /// The [message] is the info you woud like logged
  static logD(String tag, String message) {
    _channel.invokeMethod(
        'log', {'level': LogLevel.D.index, 'tag': tag, 'message': message});
  }

  /// Send a info message.
  /// The [tag] is used to identify the source of a log message.
  /// The [message] is the info you woud like logged
  static logI(String tag, String message) {
    _channel.invokeMethod(
        'log', {'level': LogLevel.I.index, 'tag': tag, 'message': message});
  }

  /// Send a warning message.
  /// The [tag] is used to identify the source of a log message.
  /// The [message] is the info you woud like logged
  static logW(String tag, String message) {
    _channel.invokeMethod(
        'log', {'level': LogLevel.W.index, 'tag': tag, 'message': message});
  }

  /// Send a error message.
  /// The [tag] is used to identify the source of a log message.
  /// The [message] is the info you woud like logged
  static logE(String tag, String message) {
    _channel.invokeMethod(
        'log', {'level': LogLevel.E.index, 'tag': tag, 'message': message});
  }
}
