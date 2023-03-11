import 'package:logger/src/models/log_level.dart';

class LogMessage {
  final Object message;
  final LogLevel level;

  const LogMessage({
    required this.message,
    this.level = const LogLevel.debug(),
  });

  @override
  String toString() {
    return message.toString();
  }
}

class LogMessageError extends LogMessage {
  final StackTrace stackTrace;

  LogMessageError({required super.message, required this.stackTrace})
      : super(level: LogLevel.error());

  @override
  String toString() {
    return '$message\n$stackTrace';
  }
}
