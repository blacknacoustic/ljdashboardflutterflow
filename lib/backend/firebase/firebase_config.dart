import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAVv4GHQdOP-G9aCU-Iac-k6CZl7nInrro",
            authDomain: "l-j-dashboard-8oq05n.firebaseapp.com",
            projectId: "l-j-dashboard-8oq05n",
            storageBucket: "l-j-dashboard-8oq05n.appspot.com",
            messagingSenderId: "217159971607",
            appId: "1:217159971607:web:321dfe6c5254e675cabd52"));
  } else {
    await Firebase.initializeApp();
  }
}
