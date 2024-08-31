import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import 'objectbox.g.dart';


class ObjectBox {
  ObjectBox._create(this.store);

  /// The Store of this app.
  late final Store store;

  static Future<ObjectBox> create(int userId) async {
    final docsDir = await getApplicationSupportDirectory();
    final directoryPath = join(docsDir.path, 'user_$userId');
    final directory = Directory(directoryPath);

    if (!await directory.exists()) {
      await directory.create(recursive: true);
    }

    final store = await openStore(
        directory: directoryPath,
        macosApplicationGroup: '439Y2L3LSG.ecatLight');

    return ObjectBox._create(store);
  }

  static Store memory() =>
      Store(getObjectBoxModel(), directory: 'memory:test-db');
}
