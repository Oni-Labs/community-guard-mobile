import 'package:bloc/bloc.dart';
import 'package:community_surveillance/helpers.dart';
import 'package:flutter/material.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';

import 'app.dart';

void main() {
  Bloc.observer = TalkerBlocObserver(talker: talker);
  runApp(const App());
}
