import 'package:logger/logger.dart';

void main() {
  Log.d('Debug message with custom name', name: 'Example');
  try {
    throw UnimplementedError('Not implemented');
  } catch (e) {
    Log.e(e);
  }
  Log.i('Info message');
  Log.w('Warning message');

  loggerMessages.listen(print);
}
