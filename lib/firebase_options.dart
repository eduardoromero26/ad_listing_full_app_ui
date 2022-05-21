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
    apiKey: 'AIzaSyAE71Pw3UajW7LMwy0lh5zR5hgeW0rjtvY',
    appId: '1:854318913117:web:413cdf690682c370c85fb4',
    messagingSenderId: '854318913117',
    projectId: 'add-listing-ksquare',
    authDomain: 'add-listing-ksquare.firebaseapp.com',
    storageBucket: 'add-listing-ksquare.appspot.com',
    measurementId: 'G-DPGY2L0C5Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDx3SkyuKkhj2--rABfJOEffldGg4cG0PA',
    appId: '1:854318913117:android:dfe70a530f76b27ec85fb4',
    messagingSenderId: '854318913117',
    projectId: 'add-listing-ksquare',
    storageBucket: 'add-listing-ksquare.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDZb07AIXvauwl-IeoPj6gOuROb-KaBwfg',
    appId: '1:854318913117:ios:3c88cb236e8d8e1dc85fb4',
    messagingSenderId: '854318913117',
    projectId: 'add-listing-ksquare',
    storageBucket: 'add-listing-ksquare.appspot.com',
    iosClientId: '854318913117-2jmauh5sesa6fbt7t0o0f5tpt0crd3mi.apps.googleusercontent.com',
    iosBundleId: 'com.example.myapp',
  );
}
