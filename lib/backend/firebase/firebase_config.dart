import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBxlCpCGYn4Y0nzGoLTmh7Ymbk8bX_Klec",
            authDomain: "doctors-app-es1gkx.firebaseapp.com",
            projectId: "doctors-app-es1gkx",
            storageBucket: "doctors-app-es1gkx.appspot.com",
            messagingSenderId: "983220763437",
            appId: "1:983220763437:web:451a5997f545215911f1a4"));
  } else {
    await Firebase.initializeApp();
  }
}
