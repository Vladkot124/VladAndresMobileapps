import 'dart:async';

import '../api/users.dart';
import '../models/user.dart';

final class UsersClient extends UserApi {
  UsersClient({required super.api});

  @override
  Future<User?> getUser() {
    throw UnimplementedError();
  }

  @override
  Future<Set<User>> getUsers() {
    throw UnimplementedError();
  }
}
