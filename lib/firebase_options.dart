// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDrPBdY1qWgxJFUTx8YJtacTcZWhlMGlVg',
    appId: '1:918124179497:web:2367b15e8d286eec5c2c38',
    messagingSenderId: '918124179497',
    projectId: 'laporin-2a7ea',
    authDomain: 'laporin-2a7ea.firebaseapp.com',
    storageBucket: 'laporin-2a7ea.appspot.com',
    measurementId: 'G-C803PSS2NF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAKyaAv0UrAFDUJUdxN5Rye5Lrn7z8h1vA',
    appId: '1:918124179497:android:4b32a6c77be7d41e5c2c38',
    messagingSenderId: '918124179497',
    projectId: 'laporin-2a7ea',
    storageBucket: 'laporin-2a7ea.appspot.com',
  );
}
