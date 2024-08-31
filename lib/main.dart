
import 'package:bloc/bloc.dart';
import 'package:community_guard_mobile/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';

import 'app.dart';

const _androidOptions = AndroidOptions(encryptedSharedPreferences: true);
const secureStorage = FlutterSecureStorage(aOptions: _androidOptions);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await _initHive();
  Bloc.observer = TalkerBlocObserver(talker: talker);
  runApp(const App());
}