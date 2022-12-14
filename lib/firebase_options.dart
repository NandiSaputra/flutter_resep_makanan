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
    apiKey: 'AIzaSyAHNFzNLW_6HjIuPq3q2e9tjvg8O4vKEhA',
    appId: '1:315183160062:web:c644140939fd602e8ba3af',
    messagingSenderId: '315183160062',
    projectId: 'resep-masakan-7d888',
    authDomain: 'resep-masakan-7d888.firebaseapp.com',
    storageBucket: 'resep-masakan-7d888.appspot.com',
    measurementId: 'G-Y2D73S4P3R',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB_60SQdOamwaVJ1c8KtWDIjvK9iQUmfco',
    appId: '1:315183160062:android:cba9b92b338c87c68ba3af',
    messagingSenderId: '315183160062',
    projectId: 'resep-masakan-7d888',
    storageBucket: 'resep-masakan-7d888.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB12rvgnfveHN0HivJzEX_Qr6ZAxZhK9cU',
    appId: '1:315183160062:ios:9b5bce44f45f0bc28ba3af',
    messagingSenderId: '315183160062',
    projectId: 'resep-masakan-7d888',
    storageBucket: 'resep-masakan-7d888.appspot.com',
    androidClientId: '315183160062-dqp2m6u8ink1f3gcss7o4s8jdv1gqlg1.apps.googleusercontent.com',
    iosClientId: '315183160062-3e15hplr9su12ltqf9g3cvjlkqkmqb4l.apps.googleusercontent.com',
    iosBundleId: 'com.example.foodsapp',
  );
}
