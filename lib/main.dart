import 'package:bloc/bloc.dart';
import 'package:community_guard_mobile/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/find_locale.dart';
import 'package:intl/intl.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';

import 'app.dart';

const _androidOptions = AndroidOptions(encryptedSharedPreferences: true);
const secureStorage = FlutterSecureStorage(aOptions: _androidOptions);

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      // statusBarColor: Colors.deepPurple, // Cor da barra de status
      systemNavigationBarColor:
          Colors.deepPurple, // Cor da barra de navegação inferior
      systemNavigationBarDividerColor: Colors.deepPurple));
  WidgetsFlutterBinding.ensureInitialized();
  Intl.defaultLocale = await findSystemLocale();
  await _initHive();

  Bloc.observer = TalkerBlocObserver(talker: talker);
  runApp(const App());
}

Future<void> _initHive() async {
  await Hive.initFlutter();
  await Hive.openBox('settings');
}
