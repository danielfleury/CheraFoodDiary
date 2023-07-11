import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBJ91LfYddr-9Ox4LkOr60GgzPRRzokwww",
            authDomain: "chera-mobile.firebaseapp.com",
            projectId: "chera-mobile",
            storageBucket: "chera-mobile.appspot.com",
            messagingSenderId: "715216434307",
            appId: "1:715216434307:web:01ea6aac53dddad073d7b6",
            measurementId: "G-7B3ECE4LNL"));
  } else {
    await Firebase.initializeApp();
  }
}
