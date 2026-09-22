import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class ManufacturerPharmaAppAuthUser {
  ManufacturerPharmaAppAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<ManufacturerPharmaAppAuthUser>
    manufacturerPharmaAppAuthUserSubject =
    BehaviorSubject.seeded(ManufacturerPharmaAppAuthUser(loggedIn: false));
Stream<ManufacturerPharmaAppAuthUser> manufacturerPharmaAppAuthUserStream() =>
    manufacturerPharmaAppAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
