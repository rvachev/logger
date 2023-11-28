import '../logger.dart';
import 'utils/logger.dart';

final _logger = Logger();

class Log {
  static void d(Object message, {String? name}) {
    _logger.log(
      LogMessage(message: message),
      name: name,
    );
  }

  static void i(Object message, {String? name}) {
    _logger.log(
      LogMessage(message: message, level: LogLevel.info()),
      name: name,
    );
  }

  static void w(Object message, {String? name}) {
    _logger.log(
      LogMessage(message: message, level: LogLevel.warn()),
      name: name,
    );
  }

  static void e(Object error, {StackTrace? trace, String? name}) {
    _logger.log(
      trace == null
          ? LogMessage(message: error, level: LogLevel.error())
          : LogMessageError(message: error, stackTrace: trace),
      name: name,
    );
  }
}
