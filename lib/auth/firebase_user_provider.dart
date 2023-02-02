import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class PruevaDeCodigoFirebaseUser {
  PruevaDeCodigoFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

PruevaDeCodigoFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<PruevaDeCodigoFirebaseUser> pruevaDeCodigoFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<PruevaDeCodigoFirebaseUser>(
      (user) {
        currentUser = PruevaDeCodigoFirebaseUser(user);
        return currentUser!;
      },
    );
