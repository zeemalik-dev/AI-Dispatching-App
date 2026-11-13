import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC7hDRJ-RRGPnQ8UFSw9YK95hzGXnLcof8",
            authDomain: "service-pro-61cgte.firebaseapp.com",
            projectId: "service-pro-61cgte",
            storageBucket: "service-pro-61cgte.firebasestorage.app",
            messagingSenderId: "425093344032",
            appId: "1:425093344032:web:d13cd8d744df6a0eca4545"));
  } else {
    await Firebase.initializeApp();
  }
}
