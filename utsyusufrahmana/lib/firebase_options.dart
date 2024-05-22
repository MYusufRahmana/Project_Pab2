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
    apiKey: 'AIzaSyBB9j0cZV8xpqKD2wyw6f8uykGKzOnG2ds',
    appId: '1:267680594267:web:6ed6fabe4159dcd470427e',
    messagingSenderId: '267680594267',
    projectId: 'utspabmyusuf-firebase',
    authDomain: 'utspabmyusuf-firebase.firebaseapp.com',
    databaseURL: 'https://utspabmyusuf-firebase-default-rtdb.firebaseio.com',
    storageBucket: 'utspabmyusuf-firebase.appspot.com',
    measurementId: 'G-DCGQ6X4ZEX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyARmf7IP9-E89ozu5WBWdq7qEgy9OQK8dY',
    appId: '1:267680594267:android:a84fc4885795299c70427e',
    messagingSenderId: '267680594267',
    projectId: 'utspabmyusuf-firebase',
    databaseURL: 'https://utspabmyusuf-firebase-default-rtdb.firebaseio.com',
    storageBucket: 'utspabmyusuf-firebase.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCM9YD6c92bw36nCi_RC91aQweoBNd7f20',
    appId: '1:267680594267:ios:544d68c1bf73f33370427e',
    messagingSenderId: '267680594267',
    projectId: 'utspabmyusuf-firebase',
    databaseURL: 'https://utspabmyusuf-firebase-default-rtdb.firebaseio.com',
    storageBucket: 'utspabmyusuf-firebase.appspot.com',
    iosBundleId: 'com.example.utsyusufrahmana',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCM9YD6c92bw36nCi_RC91aQweoBNd7f20',
    appId: '1:267680594267:ios:738d2187a0d7dffe70427e',
    messagingSenderId: '267680594267',
    projectId: 'utspabmyusuf-firebase',
    databaseURL: 'https://utspabmyusuf-firebase-default-rtdb.firebaseio.com',
    storageBucket: 'utspabmyusuf-firebase.appspot.com',
    iosBundleId: 'com.example.utsyusufrahmana.RunnerTests',
  );
}
