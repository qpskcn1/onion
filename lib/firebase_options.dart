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
    apiKey: 'AIzaSyDV1cDw27mDIoWoxwt9x7R-hFH1mNjWMTU',
    appId: '1:1042055692622:web:e23c0b97a99820c4395e1f',
    messagingSenderId: '1042055692622',
    projectId: 'onion-98690',
    authDomain: 'onion-98690.firebaseapp.com',
    storageBucket: 'onion-98690.appspot.com',
    measurementId: 'G-KJ5CPQE8Z7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC2GAkS3yeCw2YmZHsQbLeXn41RpFuGEpo',
    appId: '1:1042055692622:android:b652c4459a8e9618395e1f',
    messagingSenderId: '1042055692622',
    projectId: 'onion-98690',
    storageBucket: 'onion-98690.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBJXAH8FP2py94tRa8GfywMHo-e5DTPVxY',
    appId: '1:1042055692622:ios:746298982e633453395e1f',
    messagingSenderId: '1042055692622',
    projectId: 'onion-98690',
    storageBucket: 'onion-98690.appspot.com',
    iosClientId: '1042055692622-j0108beni6b44j0884975ql0koc71at7.apps.googleusercontent.com',
    iosBundleId: 'com.example.onion',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBJXAH8FP2py94tRa8GfywMHo-e5DTPVxY',
    appId: '1:1042055692622:ios:746298982e633453395e1f',
    messagingSenderId: '1042055692622',
    projectId: 'onion-98690',
    storageBucket: 'onion-98690.appspot.com',
    iosClientId: '1042055692622-j0108beni6b44j0884975ql0koc71at7.apps.googleusercontent.com',
    iosBundleId: 'com.example.onion',
  );
}
