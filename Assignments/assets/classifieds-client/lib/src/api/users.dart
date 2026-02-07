import 'dart:async';

import 'package:classifieds_api/classifieds_api.dart' as oas;
import 'package:logging/logging.dart';

import '../models/user.dart';
import 'base.dart';

/// A public representation of the [User] interactions.
abstract class UserApi extends ApiBase {
  @override
  final logger = Logger('UserApi');

  /// The backing Open API client.
  @override
  final oas.DefaultApi api;

  UserApi({required this.api});

  /// Obtains the user with a matching [id].
  ///
  /// Returns `null` when not found.
  FutureOr<User?> getUser();

  /// Obtains the users that match any of the [ids].
  ///
  /// Returns an empty set when there are no results.
  FutureOr<Set<User>> getUsers();
}
