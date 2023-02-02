import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyABw2AUEO5bcpQzHa-78ZTdy6uRG4ZtzL8",
            authDomain: "teamdnt-22fee.firebaseapp.com",
            projectId: "teamdnt-22fee",
            storageBucket: "teamdnt-22fee.appspot.com",
            messagingSenderId: "693715034909",
            appId: "1:693715034909:web:8a5366f63adf68b072b7f4"));
  } else {
    await Firebase.initializeApp();
  }
}
