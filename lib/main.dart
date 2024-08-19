import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:community_surveillance/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';

import 'app.dart';
import 'auth/api/entity/user.dart';

const _androidOptions = AndroidOptions(encryptedSharedPreferences: true);
const secureStorage = FlutterSecureStorage(aOptions: _androidOptions);

void main() async {
  // Certifique-se de que as bindings do Flutter sejam inicializadas
  WidgetsFlutterBinding.ensureInitialized();

  await _initHive();
  Bloc.observer = TalkerBlocObserver(talker: talker);
  runApp(const App());
}


Future<void> _initHive() async {
  await Hive.initFlutter();

  final encryptionKey = await secureStorage.read(key: 'hive_key');
  if (encryptionKey == null) {
    final key = Hive.generateSecureKey();
    await secureStorage.write(
      key: 'hive_key',
      value: base64UrlEncode(key),
    );
  }

  final key = await secureStorage.read(key: 'hive_key');
  final encryptionKeyBytes = base64Url.decode(key!);

  Hive.registerAdapter(UserAdapter());

  await Hive.openBox(
    'settings',
    encryptionCipher: HiveAesCipher(encryptionKeyBytes),
  );

  await Hive.openBox<User>(
    'user_login',
    encryptionCipher: HiveAesCipher(encryptionKeyBytes),
  );
}