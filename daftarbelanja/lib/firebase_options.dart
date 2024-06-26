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
    apiKey: 'AIzaSyARKxCMnpjmtp3Kxqnlr-hRoDQq3G-XFDY',
    appId: '1:804158970367:web:9cff3390be57f965336fca',
    messagingSenderId: '804158970367',
    projectId: 'first-app-aa8bb',
    authDomain: 'first-app-aa8bb.firebaseapp.com',
    databaseURL: 'https://first-app-aa8bb-default-rtdb.firebaseio.com',
    storageBucket: 'first-app-aa8bb.appspot.com',
    measurementId: 'G-D2KLTL2SRV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAWoPsNassjBE0u1ZrBSqg3Fa_wlhlGgC4',
    appId: '1:804158970367:android:06d892cd15bea8f7336fca',
    messagingSenderId: '804158970367',
    projectId: 'first-app-aa8bb',
    databaseURL: 'https://first-app-aa8bb-default-rtdb.firebaseio.com',
    storageBucket: 'first-app-aa8bb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCCuSLCNig5xVRw02n0Brd6vmnRIh-pXCY',
    appId: '1:804158970367:ios:a10f9f4f88dc9ad3336fca',
    messagingSenderId: '804158970367',
    projectId: 'first-app-aa8bb',
    databaseURL: 'https://first-app-aa8bb-default-rtdb.firebaseio.com',
    storageBucket: 'first-app-aa8bb.appspot.com',
    iosBundleId: 'com.example.daftarbelanja',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCCuSLCNig5xVRw02n0Brd6vmnRIh-pXCY',
    appId: '1:804158970367:ios:ad3358f1ab19e7e0336fca',
    messagingSenderId: '804158970367',
    projectId: 'first-app-aa8bb',
    databaseURL: 'https://first-app-aa8bb-default-rtdb.firebaseio.com',
    storageBucket: 'first-app-aa8bb.appspot.com',
    iosBundleId: 'com.example.daftarbelanja.RunnerTests',
  );
}
