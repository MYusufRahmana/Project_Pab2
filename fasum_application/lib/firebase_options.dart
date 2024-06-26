// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        return ios;
      case TargetPlatform.macOS:
        return macos;
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
    apiKey: 'AIzaSyDvKYleyH7upI4YPAa1cfmCRFoo1i5b1rI',
    appId: '1:1000909320393:web:2780543bac5f057bff9d18',
    messagingSenderId: '1000909320393',
    projectId: 'fasumapplication',
    authDomain: 'fasumapplication.firebaseapp.com',
    databaseURL: 'https://fasumapplication-default-rtdb.firebaseio.com',
    storageBucket: 'fasumapplication.appspot.com',
    measurementId: 'G-58VTSP28T5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCeIS6tnjJ_mJSclR2YW9WZbeD1qydchXw',
    appId: '1:1000909320393:android:6f3d49fd7d1bec13ff9d18',
    messagingSenderId: '1000909320393',
    projectId: 'fasumapplication',
    databaseURL: 'https://fasumapplication-default-rtdb.firebaseio.com',
    storageBucket: 'fasumapplication.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCmqxmZAD-mlPFAyIVdivCltoz1VAcb5iM',
    appId: '1:1000909320393:ios:3f47bb3e122e51d3ff9d18',
    messagingSenderId: '1000909320393',
    projectId: 'fasumapplication',
    databaseURL: 'https://fasumapplication-default-rtdb.firebaseio.com',
    storageBucket: 'fasumapplication.appspot.com',
    iosBundleId: 'com.example.fasumApplication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCmqxmZAD-mlPFAyIVdivCltoz1VAcb5iM',
    appId: '1:1000909320393:ios:faf3255e8f814ba6ff9d18',
    messagingSenderId: '1000909320393',
    projectId: 'fasumapplication',
    databaseURL: 'https://fasumapplication-default-rtdb.firebaseio.com',
    storageBucket: 'fasumapplication.appspot.com',
    iosBundleId: 'com.example.fasumApplication.RunnerTests',
  );
}
