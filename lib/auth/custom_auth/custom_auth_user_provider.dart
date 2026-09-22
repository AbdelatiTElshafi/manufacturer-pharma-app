import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class MAHNewServerAuthUser {
  MAHNewServerAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<MAHNewServerAuthUser> mAHNewServerAuthUserSubject =
    BehaviorSubject.seeded(MAHNewServerAuthUser(loggedIn: false));
Stream<MAHNewServerAuthUser> mAHNewServerAuthUserStream() =>
    mAHNewServerAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
