import 'dart:async';

import 'package:logger/src/formatter/log_formatter.dart';
import 'package:logger/src/models/log_message.dart';
import 'dart:developer' as dev;

class Logger {
  final LogFormatter _formatter;

  Logger({LogFormatter formatter = const LogFormatter.defaultFormatter()})
      : _formatter = formatter;

  static final StreamController<LogMessage> _streamController =
      StreamController();
  static Stream<LogMessage> get messages => _streamController.stream;

  void log(LogMessage message, {String? name}) {
    _streamController.sink.add(message);
    dev.log(_formatter.format(message), name: name ?? message.level.name);
  }
}
