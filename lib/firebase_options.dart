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
    apiKey: 'AIzaSyCDfhXjnnIhaEUeTg829SppNE1IaMLAqPc',
    appId: '1:477706185545:web:b51ef70c7e76c96f8fc898',
    messagingSenderId: '477706185545',
    projectId: 'ecommerce07-b33a0',
    authDomain: 'ecommerce07-b33a0.firebaseapp.com',
    storageBucket: 'ecommerce07-b33a0.appspot.com',
    measurementId: 'G-WW6ZWSDHZP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBCNg3QDa6SOoCYl-CA-rkOcGrLtICZSQg',
    appId: '1:477706185545:android:b4b43cfa6bb144ff8fc898',
    messagingSenderId: '477706185545',
    projectId: 'ecommerce07-b33a0',
    storageBucket: 'ecommerce07-b33a0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDLMOo-ngWZpMPILypIBaJ-HO56MVeCJe0',
    appId: '1:477706185545:ios:c76b527e169b44cb8fc898',
    messagingSenderId: '477706185545',
    projectId: 'ecommerce07-b33a0',
    storageBucket: 'ecommerce07-b33a0.appspot.com',
    androidClientId: '477706185545-ulh8aq1apqopcg575ateo7fpavklpm6c.apps.googleusercontent.com',
    iosClientId: '477706185545-lj1963ogramj9rmennuflujm2v87p8bo.apps.googleusercontent.com',
    iosBundleId: 'com.example.ecommerse',
  );
}
