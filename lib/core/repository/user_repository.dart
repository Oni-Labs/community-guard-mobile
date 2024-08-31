import 'dart:convert';

import 'package:community_guard_mobile/main.dart';
import 'package:dio/dio.dart';
import 'package:objectbox/objectbox.dart';

import '../../helpers.dart';
import '../entity/user.dart';
import '../../objectbox.dart';
import '../../objectbox.g.dart';

class UserRepository {
  Box<User> get _userBox => getIt<ObjectBox>().store.box<User>();

  Future<User?> getLoggedUser() async {
    try {
      if (await secureStorage.containsKey(key: 'user')) {
        final userData = await secureStorage.read(key: 'user');
        if (userData == null) return null; // Retorna null se os dados forem inexistentes

        return User.fromJson(jsonDecode(userData));
      }
    } on DioException catch (e, stack) {
      talker.warning('Erro ao obter o usuário logado');
      talker.handle(e, stack);
    }

    return null; // Retorna null se nenhum usuário estiver logado
  }

  Future<void> setUser(User user) async {
    await _userBox.putAsync(user);
  }

  Future<void> deleteUser() async {
    await _userBox.removeAllAsync();
  }

}