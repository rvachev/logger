import 'package:logger/src/formatter/log_formatter.dart';
import 'package:logger/src/models/log_message.dart';
import 'dart:developer' as dev;

class Logger {
  final LogFormatter _formatter;

  const Logger({LogFormatter formatter = const LogFormatter.defaultFormatter()})
      : _formatter = formatter;

  void log(LogMessage message) {
    dev.log(_formatter.format(message), name: message.level.name);
  }
}
