import 'package:logger/src/models/log_level.dart';
import 'package:logger/src/models/log_message.dart';
import 'package:logger/src/utils/logger.dart';

final _logger = Logger();

class Log {
  static void d(Object message) {
    _logger.log(LogMessage(message: message));
  }

  static void i(Object message) {
    _logger.log(LogMessage(message: message, level: LogLevel.info()));
  }

  static void w(Object message) {
    _logger.log(LogMessage(message: message, level: LogLevel.warn()));
  }

  static void e(Object error, [StackTrace? trace]) {
    _logger.log(
      trace == null
          ? LogMessage(message: error, level: LogLevel.error())
          : LogMessageError(message: error, stackTrace: trace),
    );
  }
}
