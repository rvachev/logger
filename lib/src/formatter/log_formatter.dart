import 'package:logger/src/models/log_message.dart';

abstract class LogFormatter {
  const LogFormatter();

  String format(LogMessage log);

  const factory LogFormatter.defaultFormatter() = _DefaultLogFormatter;
}

class _DefaultLogFormatter extends LogFormatter {
  const _DefaultLogFormatter();

  @override
  String format(LogMessage log) {
    final level = log.level;
    final message = log.toString();
    String formattedMessage = '';
    level.when(
        debug: () => formattedMessage = _formatDebug(message: message),
        info: () => formattedMessage = _formatInfo(message: message),
        warn: () => formattedMessage = _formatWarn(message: message),
        error: () => formattedMessage = _formatError(message: message));
    return formattedMessage;
  }

  String _formatDebug({required String message}) {
    return '\x1b[34m$message';
  }

  String _formatInfo({required String message}) {
    return '\x1b[33m$message';
  }

  String _formatWarn({required String message}) {
    return '\x1b[38;5;214m$message';
  }

  String _formatError({required String message}) {
    return '\x1B[31m$message';
  }
}
