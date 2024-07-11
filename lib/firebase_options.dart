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
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyBk5rBVRTali_txlhUNAPp_MIGftfRHkvQ',
    appId: '1:564763591070:web:f9525c79e9fed546df168f',
    messagingSenderId: '564763591070',
    projectId: 'stresalarm',
    authDomain: 'stresalarm.firebaseapp.com',
    storageBucket: 'stresalarm.appspot.com',
    measurementId: 'G-BST2RSY7SH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAc3MhLRM1wwdMNVS-HFkrYt_dIrfiS7pw',
    appId: '1:564763591070:android:d26d4d323892ea79df168f',
    messagingSenderId: '564763591070',
    projectId: 'stresalarm',
    storageBucket: 'stresalarm.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB95pmbzBgyD1GYpK50ZA_0PumOsumZGw4',
    appId: '1:564763591070:ios:4f466adffcdcc63bdf168f',
    messagingSenderId: '564763591070',
    projectId: 'stresalarm',
    storageBucket: 'stresalarm.appspot.com',
    iosBundleId: 'com.example.stresalarm',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB95pmbzBgyD1GYpK50ZA_0PumOsumZGw4',
    appId: '1:564763591070:ios:4f466adffcdcc63bdf168f',
    messagingSenderId: '564763591070',
    projectId: 'stresalarm',
    storageBucket: 'stresalarm.appspot.com',
    iosBundleId: 'com.example.stresalarm',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBk5rBVRTali_txlhUNAPp_MIGftfRHkvQ',
    appId: '1:564763591070:web:8202905ab784818cdf168f',
    messagingSenderId: '564763591070',
    projectId: 'stresalarm',
    authDomain: 'stresalarm.firebaseapp.com',
    storageBucket: 'stresalarm.appspot.com',
    measurementId: 'G-0FM3RGSZ4E',
  );
}