/// Support for doing something awesome.
///
/// More dartdocs go here.
library logger;

import 'package:logger/src/utils/logger.dart';

export 'src/log.dart';
export 'src/models/log_level.dart';
export 'src/models/log_message.dart';

final loggerMessages = Logger.messages;
