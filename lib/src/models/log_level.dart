abstract class LogLevel {
  const LogLevel._();

  String get name;

  const factory LogLevel.debug() = _LogLevelDebug;

  const factory LogLevel.info() = _LogLevelInfo;

  const factory LogLevel.warn() = _LogLevelWarn;

  const factory LogLevel.error() = _LogLevelError;

  void when({
    required void Function() debug,
    required void Function() info,
    required void Function() warn,
    required void Function() error,
  });
}

class _LogLevelDebug extends LogLevel {
  const _LogLevelDebug() : super._();

  @override
  void when(
      {required void Function() debug,
      required void Function() info,
      required void Function() warn,
      required void Function() error}) {
    return debug();
  }

  @override
  String get name => 'Debug';
}

class _LogLevelInfo extends LogLevel {
  const _LogLevelInfo() : super._();

  @override
  void when(
      {required void Function() debug,
      required void Function() info,
      required void Function() warn,
      required void Function() error}) {
    return info();
  }

  @override
  String get name => 'Info';
}

class _LogLevelWarn extends LogLevel {
  const _LogLevelWarn() : super._();

  @override
  void when(
      {required void Function() debug,
      required void Function() info,
      required void Function() warn,
      required void Function() error}) {
    return warn();
  }

  @override
  String get name => 'Warn';
}

class _LogLevelError extends LogLevel {
  const _LogLevelError() : super._();

  @override
  void when(
      {required void Function() debug,
      required void Function() info,
      required void Function() warn,
      required void Function() error}) {
    return error();
  }

  @override
  String get name => 'Error';
}
