import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC0BDGFP5p-jr381u-8tpoCcTBfFDRRsoY",
            authDomain: "ebanisteria-b9b1e.firebaseapp.com",
            projectId: "ebanisteria-b9b1e",
            storageBucket: "ebanisteria-b9b1e.appspot.com",
            messagingSenderId: "959406919026",
            appId: "1:959406919026:web:27b3bf337f1bdf208f61eb",
            measurementId: "G-ZCREQ3ZXY5"));
  } else {
    await Firebase.initializeApp();
  }
}
